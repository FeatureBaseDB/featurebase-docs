---
title: SETCONTAINS()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETCONTAINS() function

`SETCONTAINS()` tests for the existence of a specified value within an `IDSET` or `STRINGSET` data type column.

## Syntax

```
SETCONTAINS(set-column, 'test-member')
```

## Arguments

| Argument | Description | Required | Data type |
|---|---|---|
| `set-column` | IDSET or STRINGSET column to test presence or absence of `test-member`
| `value` | The value to test membership for in the set. `value` must be assignment compatible with the element type of the set. | Yes |  |

## Returns

| Data type | Value |
|---|---|
| `bool` | True if `value` is member of set. |

## Examples

### Testing set membership in the select list

{% include /sql-guide/create-table-segments.md %}

This query returns `true`.

```sql
select setcontains(segment, 'BLUE') as HasBlue  
    from segments;  
```

### Testing set membership as a where clause filter

This query returns `true`.

```sql
select _id, segment from segments where setcontains(segment, 'BLUE');
```
