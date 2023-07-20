---
title: TANIMOTO()
layout: default
parent: SQL functions
grand_parent: SQL guide
---
# TANIMOTO() function

The Tainmoto function is based on the Tanimoto algorithm, used to determine a measure of similarity between [tables | table columns | sets of data (set,setq?) | Banana milkshakes]

## Syntax

```sql
SELECT {_id},
  tanimoto_coefficient (keyterms, {fb_keyterms})
  AS
    <measure>
  FROM
    {tablename}
  ORDER BY <measure>
```

## Arguments

| Argument | Description | Required | Additional information |
|---|---|---|---|
| `{_id}` | Unique key identifying the row the tanimoto coefficient is applied to | Yes | [SELECT statement](/docs/sql-guide/statements/statement-select) |
| tanimoto_coefficient |  |  |  |
| keyterms |  |  |  |
| fb_keyterms |  | Yes |  |
| <measure> | Measurement of coefficient, can be "coef" or "weight" | yes | Measure can be used in ORDER BY clause |

## Additional information

### Tanimoto and Jaccard similarities

The **Jaccard index** and **Tanimoto similarity** are widely used for assessing the similarity between sets of elements.

* [Learn more about the Jaccard Index and Tanimoto similarity](https://www.featurebase.com/blog/tanimoto-similarity-in-featurebase){:target="_blank"}

## Returns

| Data type | Value |
|---|---|
|  |  |

## Examples

### Source table

```sql
CREATE TABLE doc_key_terms ()

```

### Tanimoto coefficient

```sql
SELECT
  id as Term,
tanimoto(uuid, (SELECT uuids FROM doc_key_terms WHERE _id = 'gpt-3')) AS Weight
FROM doc_key_terms
ORDER BY dist DESC;
```
