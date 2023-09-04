---
title: SETEXLCUDES()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETEXCLUDES() function

`SETEXCLUDES()` tests for the existence of a specified value within `IDSET` and `STRINGSET` data types.

## Syntax

```
SETEXCLUDES(column-set, [int-val | 'string-val'])
```

## Arguments

| Argument | Description | Data type | Additional information |
|---|---|---|---|
| `column-set` | Column tested for existence of `test-member` value | `IDSET` or `STRINGSET` | * [IDSET data type](/docs/sql-guide/data-types/idset)<br/>* [STRINGSET data type](/docs/sql-guide/data-types/stringset) |
| `int-val` | Integer value to test for in `IDSET` column | [INTEGER data type](/docs/sql-guide/data-types/data-type-int) |
| `string-val` | Single quoted string value to test for in `STRINGSET` column | [STRING data type](/docs/sql-guide/data-types/data-type-string) |

## Additional information

Use a `WHERE` clause with `AND` operator to add two or more `SETINCLUDES()` functions.

## Returns

| Data type | Value |
|---|---|
| `bool` | `TRUE` when `column-set` does **not** include `test-member` |

## Examples

{% include /sql-guide/create-table-segments.md %}

### Testing set membership in the select list

This query returns `true`.

```sql
select setexcludes(segment, 'purple') as NOTPURPLE
    from segments;  
```

### Testing set membership as a where clause filter

This query returns `true` with the selected `_id`.

```sql
select _id from segments where setexcludes(segment, 'purple');
```

### Testing set membership as a where clause filter with multiple set members

This query returns `true` with the selected `_id`.

```sql
select _id from segments where setexcludes(segment, 'purple') and setexcludes(segment, 'yellow');
```
