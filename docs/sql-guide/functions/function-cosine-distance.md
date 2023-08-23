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
COSINE_DISTANCE ({<compare-vector>,<vector-column>])
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|---|
| `<compare-vector>` | A comma separated list of floating point numbers to be compared which can be derived using a nested SELECT statement |
| `<vector-column>` | Column in target table |

## Additional information

### SELECT statement

The function is used in a SELECT statement and requires:
* [Select List](/docs/sql-guide/statements/statement-select#select_list-information)
* [From clause](/docs/sql-guide/statements/statement-select/#from_clause-information)
* [Order by clause](/docs/sql-guide/statements/statement-select/#ordering-results)

## Returns

| Returns | Description |
|---|---|
|

## Examples
