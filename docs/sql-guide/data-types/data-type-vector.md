---
title: VECTOR
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 11
---

# VECTOR() data type

Vector data types store a specified quantity of floating point values in an array that can be queried using [Cosine and Euclidean Distance functions](#further-information).

## Before you begin

* [Learn about Word embedding in Natural Language Processing systems](https://en.wikipedia.org/wiki/Word_embedding){:target="_blank"}

## Syntax

```
VECTOR({length})
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| length | An integer value representing the number of distinct values in the array | Length must be >= 1 |

## Additional information

## Vector value requirements

Each distinct value must be:
* floating point,
* with the same scale (number of digits after decimal point)
* and [64-bit maximum precision](https://en.wikipedia.org/wiki/Double-precision_floating-point_format){:target="_blank"}

## Examples

* [CREATE TABLE with VECTOR data type](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-cosvec-target)
* [INSERT INTO VECTOR data type](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-cosvec-target)
* [SELECT FROM VECTOR data type](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-cosvec-target)

## Further information

The following functions can be included in SELECT queries to measure VECTOR values:
* [COSINE_DISTANCE function](/docs/sql-guide/functions/function-vector-distances)
* [EUCLIDEAN_DISTANCE function](/docs/sql-guide/functions/function-vector-distances)
