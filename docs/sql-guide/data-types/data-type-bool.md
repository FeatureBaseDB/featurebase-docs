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
| integer > 0 | 1 or more | 1 |
| string | NULL, `0`, `f`, `false` | 0 |
| string | Any other string values | 1 |

## Examples

{% include /sql-guide/sql-eg-table-all-datatypes-links.md %}

## INSERT integer and string values

```sql
INSERT INTO all-datatypes (_id, boolcol) VALUES
(1, 0),
(2, 1),
(3, 12834),
(4, NULL),
(5, 'false'),
(6, 'string value that will turn out to be true');
```
