---
title: ID
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 3
---

# ID numeric data type

The `ID` data type accepts unsigned integer values and used:
* as a valid data type for the `_id` unique identifier in CREATE TABLE statements
* to query distinct values and low-cardinality data sets using `GROUP BY`

## Syntax

```sql
ID
```

## Arguments

| Argument | Description |
|---|---|
| ID | Numeric data type used for unsigned integers that are between `1` and `2^63 -1` |

## Additional information

* `ID` has a `mutex` internal data type

## Examples

{% include /sql-guide/sql-eg-all-datatypes-list.md %}
