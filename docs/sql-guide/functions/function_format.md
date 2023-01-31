---
title: FORMAT()
layout: default
parent: SQL functions
grand_parent: SQL guide
---

# FORMAT () String function

The `Format()` function formats a list of values according to a supplied format string.

## Syntax

```
format({specifier}, value,...)
```

## Arguments

| Argument | Description | Further information |
|---|---|---|
| specifier | Specified format specifier | [Format specifiers](#format_specifiers) |
| `value`| One or more values to be converted to the specified format |  |

## Format Specifiers

| Specifier | Data type |
|---|---|
| `%s` | String |
| `%d` | Integer |
| `%f` | Floating-point |
| `%b` | Boolean |
| `%x` | Hexadecimal |
| `%o` | Octal |
| `%v` | Value in a default format |

## Returns

| Data type | Value |
|---|---|
| String | One or more supplied values formatted to the supplied specifier |

## Examples

### Format with multiple arguments.

Table definition and inserting values
```sql
create table segments
    (_id id, segment string, value int);
insert into segments(_id, segment, value)
    values (1,'white', 16777215);
```

```
select _id, format("%s -> #%x", segment, value) as segment from segments;
+-----+-----------------+
| _id | segment         |
+-----+-----------------+
|   1 | white -> #ffffff|
+-----+-----------------+
```

### Format with default values and sets

Create table and insert data.

```sql
create table segments
    (_id id, time timestamp timeunit 'ms' epoch '2022-01-01T00:00:00Z', ids idset, strings stringset);
insert into segments(_id, time, ids, strings)
    values (1, '2023-01-01', [6 , 1, 9], ['red', 'blue', 'green']);
```

FORMAT() statement defining specifiers for columns
```
select format('id = %d , time = %v , ids = %d, strings = %s', _id, time, ids, strings) as description from segments;
+-------------------------------------------------------------------------------------------+
| description                                                                               |
+-------------------------------------------------------------------------------------------+
| id = 1 , time = 2023-01-01 00:00:00 +0000 UTC , ids = [1 6 9], strings = [blue green red] |
+-------------------------------------------------------------------------------------------+
```
