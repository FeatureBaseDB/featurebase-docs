---
title: ID
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 3
---

# ID numeric datatype

The `ID` data type is used for unsigned integer data, and can be applied to any table column, including the `_id` unique identifier.

## Syntax

```
ID
```

## Arguments

| Argument | Description | Limits |
|---|---|---|
| ID | Numeric data type used for unsigned integers | `1` to `2^63 -1` |

## Additional information

The ID data type has a `mutex` internal data type and is best used for low-cardinality data in queries:
* with GROUP BY clause
* on discrete values

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table-create-types-all-eg.md %}
