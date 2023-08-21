---
title: TANIMOTO()
layout: default
parent: SQL functions
grand_parent: SQL guide
---
# TANIMOTO() scalar function

The TANIMOTO scalar function determines the similarity of data in a specified table or view.

<!-- QUERY - can JACCARD be substituted for TANIMOTO?-->

## Syntax

```sql
tanimoto[_coefficient | _distance]
  ( <column-name>,
    {
      (<select-statement>) |
      [<item-list>]
    }
  )
```

## Arguments

| Argument | Description | Required | Additional information |
|---|---|---|---|
| `tanimoto_coefficient` |  |  |  |
| `tanimoto_distance` |  |  |  |
| `<column-name>` | Name of column named in SELECT statement the function is a part of | Optional |  |
| `<select-statement>` | Nested SQL statement to obtain values |  |  |
| `<item-list>` | comma separated list of items found in the table named in the surrounding SELECT statement. | Yes |  |

## Additional information

### SELECT statement

The function is used in a SELECT statement and requires:
* [Select List](/docs/sql-guide/statements/statement-select#select_list-information)
* [From clause](/docs/sql-guide/statements/statement-select/#from_clause-information)
* [Order by clause]

### Tanimoto and Jaccard similarities

The **Jaccard index** and **Tanimoto similarity** are widely used for assessing the similarity between sets of elements.

* [Learn more about the Jaccard Index and Tanimoto similarity](https://www.featurebase.com/blog/tanimoto-similarity-in-featurebase){:target="_blank"}

## Quoting values



## Returns

| Data type | Value |
|---|---|
|  |  |

## Examples

<!--NOTE FOR REVIEWERS > This will link out to content to be added in in the "cookbook" branch)-->

### Source table

Create table:
```sql
CREATE TABLE tanimoto_test (_id id, stuff stringset);
```

Insert values:
```sql
INSERT INTO tanimoto_test VALUES
(1, ['cookies', 'milk']),
(2, ['cup', 'plate']);
```

### Tanimoto coefficient

```sql
SELECT *, tanimoto_coefficient (stuff, [milk, chocolate, cookies, cup])
  AS
    distance
  FROM
    fbtest
  ORDER BY distance;
```
