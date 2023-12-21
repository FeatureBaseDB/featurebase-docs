---
title: BOOL
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 1
---

# BOOL data type

## Syntax

```
BOOL [TRUE | FALSE]
```

## Arguments

| Argument | Description |
|---|---|
| BOOL | The BOOL type stores simple Boolean (true/false) values and is used for simple query filtering. |

## Additional information

Use this table to determine how integer and string values are represented when added to a Boolean column.

| data | value | bool |
|---|---|---|
| integer | 0 | 0 |
| integer > 0 | 1 | 1 |
| string | empty, `0`, `f`, `false` | 0 |
| string | other string values | 1 |

## Examples

{% include /sql-guide/sql-eg-all-datatypes-create-insert.md %}

* [Query bool data type](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-all-types)
