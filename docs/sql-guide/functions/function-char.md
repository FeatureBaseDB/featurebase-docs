---
title: CHAR()
layout: default
parent: Functions
grand_parent: SQL guide
---

# CHAR() function

`CHAR()` returns an ASCII character based on an integer value between 0 and 255.

## Syntax

```
CHAR(<value> | <col-name>)
```

## Arguments

| Argument | Description | Length |
|---|---|---|---|
| `<value>` | Integer value between 0 and 255 representing the decimal value of an ASCII character. |
| `<col-name>` | Column name containing an integer value between 0 and 255 |

## Examples

{% include /sql-guide/sql-eg-table-all-datatypes-links.md %}

## CHAR() function on a column

```sql
SELECT _id CHAR(intcol) FROM all-datatypes;
```
