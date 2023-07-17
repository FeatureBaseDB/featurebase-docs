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
tanimoto [where the magic happens]
```

## Arguments

| Argument | Description | Required | Additional information |
|---|---|---|---|
|  |  |  |  |

## Additional information

### Similarities between Tanimoto similarity and Jaccard Index

The **Jaccard index** and **Tanimoto similarity** are widely used for assessing the similarity between sets of elements.

* [Learn more about the Jaccard Index and Tanimoto similarity](https://www.featurebase.com/blog/tanimoto-similarity-in-featurebase){:target="_blank"}

## Returns

| Data type | Value |
|---|---|
|  |  |

## Examples

```sql
SELECT
id as Term,
tanimoto(uuid, (SELECT uuids FROM doc_key_terms WHERE _id = 'gpt-3')) AS Weight
FROM doc_key_terms
ORDER BY dist DESC;
```
