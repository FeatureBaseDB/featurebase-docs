---
title: COSINE_DISTANCE()
layout: default
parent: Functions
grand_parent: SQL guide
---
# CONSINE_DISTANCE() function

`COSINE_DISTANCE()` is a mathematical function used with vector calculations.

## Syntax

```sql
COSINE_DISTANCE ({compare-vector, vector-column])
```

## Arguments

| Argument | Description |
|---|---|
| compare-vector | A comma separated list of floating point numbers to be compared which can be derived using a nested SELECT statement |
| vector-column | Column with `vector()` datatype in target table to compare against |

## Examples

### Table CREATE with vector data type

{% include /sql-guide/table=create-vector.md%}

### INSERT INTO vector data type

{% include /sql-guide/insert-into-vector-table.md %}

### SELECT with COSINE_DISTANCE from vector column

{% include /sql-guide/select-cosine-distance.md %}