---
title: LOWER()
layout: default
parent: SQL functions
grand_parent: SQL guide
---

# LOWER() string function

`LOWER()` function converts the specified string to lower-case in the column.

## Syntax

```
lower(expr)
```

## Arguments

| Argument | Description |
|---|---|
| `expr` | Any `string` expression. |

## Returns

| Data type | Value |
|---|---|
| `string` | `expr` converted to lower-case. |


## Examples

### Convert strings in a column to lower-case

```sql
create table segments
    (_id id, segment string);

insert into segments(_id,segment)
    values (1,'GREEN')

select _id, lower(segment) as convertedstr from segments;
+-----+---------------+
| _id | convertedstr  |
+-----+---------------+
|   1 | green         |
+-----+---------------+
```
