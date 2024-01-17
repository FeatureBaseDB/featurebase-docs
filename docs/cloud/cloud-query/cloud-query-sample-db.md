---
title: Query a billion row database
layout: default
parent: Cloud query
grand_parent: Cloud
nav_order: 1
has_toc: false
---

# How do I query the billion row database?
{: .no_toc }

{% include /cloud-db/cloud-sample-db-summary.md %}

Learn how fast the FeatureBase database is by running queries against the `cseg` (customer segmentation) and `skills` tables

{% include page-toc.md %}

## Before you begin
{: .no_toc }
* [Create a database with sample data](/docs/cloud/cloud-databases/cloud-db-create-sample)
* [Learn how to run queries on FeatureBase Cloud data](/docs/cloud/cloud-query/cloud-query-home)

## Table statements

Output CREATE TABLE statements for both tables with these queries.

```sql
SHOW CREATE TABLE cseg;
```

This outputs:

```sql
CREATE TABLE cseg (
  _id ID,
  age INT,
  bools STRINGSET,
  bools-exists STRINGSET,
  city STRINGSET,
  education STRINGSET,
  general_election_voting_frequency IDSET,
  hobbies STRINGSET,
  income INT,
  political_party_affiliation STRINGSET,
  primary_election_voting_frequency IDSET,
  race STRINGSET,
  sex STRINGSET,
  skills STRINGSET,
  titles STRINGSET,
  zip_code STRINGSET);
```

```sql
SHOW CREATE TABLE skills;
```

This outputs:

```sql
CREATE TABLE skills (
  _id STRING(max),
  bools STRINGSET,
  bools-exists STRINGSET,
  id INT,
  skills STRINGSET,
  titles STRINGSET);
```

### What are `IDSET` and `STRINGSET` data types?

Both tables include FeatureBase IDSET and STRINGSET data types to store low-cardinality data (1:many relationships) in a single column without needing to rely on traditional data models such as the star schema.

* [Learn about the IDSET data type](/docs/sql-guide/data-types/data-type-idset)
* [Learn about the STRINGSET data type](/docs/sql-guide/data-types/data-type-stringset)

## SQL queries

The following queries demonstrate sub-second latency in the FeatureBase database

### Data Exploration 

These queries prove the database contains 1000025000 rows, the majority contained in `cseg`.

```sql
SELECT COUNT(*) FROM cseg;
SELECT COUNT(*) FROM skills;
```

Output the top 10 rows in each table:
```sql
SELECT TOP(10) * FROM cseg;
SELECT TOP(10) * FROM skills;
```

### Aggregations

These queries aggregate the values in the `income` column of the `cseg` table.

| Query | Result |
|---|---|
| `SELECT SUM(income) FROM cseg;` | 100775986981472 |
| `SELECT SUM(income) FROM cseg where income > 5000;` | 100700159226528 |
| `SELECT AVG(income) FROM cseg;` | 100775.9869 |

### Complex Segmentation 

This query is based on the aggregate queries and outputs those rows where the:
* `income` is greater-than 5000
* `age` is 45
* `skills` column contains two specific values.

{: .note}
`SETCONTAINSANY` is a function used to identify specific values in `IDSET` and `STRINGSET` comma-separated arrays.

| Query | Result |
|---|---|
| `SELECT SUM(income) FROM cseg WHERE income > 5000 AND age = 45 AND (SETCONTAINSANY(skills,['Ms Office','Excel']));` | 32177307009 |

<!-- commenting out because these hang cloud. Jira is FB-2480
### Grouping with Complex Conditions

A `GROUP BY` query on IDSET and STRINGSET columns will output all values in the

These queries demonstrate how GROUP BY may output more results than expected when IDSET and STRINGSET columns are queried:

```sql
SELECT hobbies, COUNT(*) as cnt
FROM cseg
GROUP BY hobbies
HAVING COUNT(*) > 200000000
ORDER BY cnt DESC;
```

```sql
SELECT education, SUM(income)
FROM cseg
WHERE age=18
GROUP BY education;
```


Use the `FLATTEN` hint to output distinct rather than grouped results:

```sql
SELECT hobbies, COUNT(*) as cnt
FROM cseg
WITH (flatten(hobbies))
GROUP BY hobbies
HAVING COUNT(*) > 200000000
ORDER BY cnt DESC;
```

```sql
SELECT education, SUM(income)
FROM cseg
WITH (flatten(education))
WHERE age=18
GROUP BY education;
```

* [Learn why the GROUP BY on IDSET and STRINGSET columns has unexpected results](/docs/cloud/cloud-troubleshooting/cloud-groupby-flatten-set-setq)
-->
### Count records using joins

The following ```INNER JOIN``` query is built using the PQL query language, native to FeatureBase.

{: .note}
>The native query language **PQL** (Pilosa Query Language) are used in the following expressions.
>[Learn more about Pilosa Query Language (PQL)](/docs/pql-guide/pql-home)

Prove there are 89 teachers available to hire by running this PQL query:

```
[cseg]Count(Intersect(
Row(hobbies="Teaching"),
Distinct(Row(bools='available_for_hire'), field= id, index=skills)))
```

### Ranking queries

Return the top five hobbies from the `cseg` table using the PQL equivalent to a `GROUP BY` query.

```
[cseg]TopK(hobbies, k=5)
```

Result:
```
field           | count
----------------+-----------
Lego building   | 533344432
Watching movies | 464147056
Watch making    | 406943232
Slacklining     | 359565952
BMX             | 319970304
```

Return the top 10 hobbies for women who also like scuba-diving:
```
[cseg]TopK(hobbies, k=10, filter=Intersect(Row(sex=Female),Row(hobbies='Scuba Diving')))
```

Result:
```
field              |count
-------------------+----------
Scuba Diving       | 94048
Lego building      | 88624
Watching movies    | 85648
Watch making       | 83680
Slacklining        | 81248
BMX                | 78800
Cricket            | 75968
Sketching          | 73536
Satellite watching | 71152
```

## Next step

{: .important}
* [Delete the sample database](/docs/cloud/cloud-databases/cloud-db-delete) to reduce costs as soon as testing concludes

## Related information

* [FeatureBase SQL guide](/docs/sql-guide/sql-guide-home)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)
