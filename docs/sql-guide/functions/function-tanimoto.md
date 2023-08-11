---
title: TANIMOTO()
layout: default
parent: SQL functions
grand_parent: SQL guide
---
# TANIMOTO() function

The Tainmoto function is based on the Tanimoto algorithm, used to determine a measure of similarity between data in a table or view.

## Syntax

```sql
tanimoto_coefficient (keyterms, {fb_keyterms})
```

## Arguments

| Argument | Description | Required | Additional information |
|---|---|---|---|
| tanimoto_coefficient |  |  |  |
| keyterms | Designation for coefficient result |  |  |
| fb_keyterms | Items in source table to place in order | Yes |  |

## Additional information

### SELECT statement

The function is used in a SELECT statement and requires:
* [Select List](/docs/sql-guide/statements/statement-select#select_list-information)
* [From clause](/docs/sql-guide/statements/statement-select/#from_clause-information)
* [Order by clause]

### Tanimoto and Jaccard similarities

The **Jaccard index** and **Tanimoto similarity** are widely used for assessing the similarity between sets of elements.

* [Learn more about the Jaccard Index and Tanimoto similarity](https://www.featurebase.com/blog/tanimoto-similarity-in-featurebase){:target="_blank"}

## Returns

| Data type | Value |
|---|---|
|  |  |

## Examples

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
