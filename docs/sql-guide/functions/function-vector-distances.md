---
title: vector distance functions
layout: default
parent: Functions
grand_parent: SQL guide
---
# Vector distance functions

Two functions are available to measure the difference between two vectors. They have
the same syntax, and take the same arguments, but compute different distance metrics.

Both cosine and euclidean distance metrics take two vectors as inputs. Vectors can be
either vector literals, such as `[0.0, 1.0]` or vector expressions, such as a vector
column in a table. The vectors must have the same number of dimensions.

## Syntax

```sql
COSINE_DISTANCE (<vector1>, <vector2>)
EUCLIDEAN_DISTANCE (<vector1>, <vector2>)
```

## Semantics

The cosine distance, sometimes called the cosine similarity, of two vectors is a measure of the
angle between them. This gives a measure of similarity ignoring the magnitude of the vectors.

The Euclidean (or Euclidian) distance between two vectors is the square root of the sum of the squares
the pairwise differences between the vectors. This is the distance metric most commonly used when talking
about distances between locations on a plane.

For unit-length vectors, the cosine and Euclidean distances are identical.

## Arguments

| Argument | Description |
|---|---|---|
| `<vector1>` | Any vector expression, such as a vector literal or column with `VECTOR()` data type. |
| `<vector2>` | Any vector expression, such as a vector literal or column with `VECTOR()` data type. |

## Examples

* [SELECT using DISTANCE functions](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-cosvec-target)
