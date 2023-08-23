---
title: Vector
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 11
---

# VECTOR() data type

Vector data types store a specified number of values in an array that can be queried using the cosine_distance function.

## Syntax

```
VECTOR({length})
```

## Arguments

| Argument | Description |
|---|---|---|
| length | An integer value representing the number of elements in the array |

## Examples

### CREATE TABLE statement with Vector

{% include /sql-guide/table-create-vector.md %}
