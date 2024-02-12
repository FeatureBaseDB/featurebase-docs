---
title: LEN()
layout: default
parent: Functions
grand_parent: SQL guide
---

# LEN() function

`LEN()` returns the length of the string expression.

## Syntax

```
len(str_expr)
```

## Arguments

| Argument | Description | Length |
|---|---|---|---|
| `str_expr` | Any `string` expression. | 1 |

## Returns

| Data type | Value |
|---|---|
| `int` | Length of `str_expr`. |

## Examples

{% include /sql-guide/sql-eg-table-all-datatypes-links.md %}

### LEN() function on a column

```sql
create table segments
    (_id id, segment string);

insert into segments(_id, segment)
    values (1,'testing')

select _id, len(segment) as length from segments;
+-----+----------+
| _id | length   |
+-----+----------+
|   1 | 7        |
+-----+----------+
```
