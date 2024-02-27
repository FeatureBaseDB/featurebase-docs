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

{% include /sql-guide/sql-eg-table-all-datatypes-links.md %}

<!-- commented out so FB-2512 can be fixed
```sql
INSERT INTO all-datatypes (_id, idcol) VALUES
  (1, 12345),
  (2, 9223372036854775807);
```
-->
