---
title: SETCONTAINSANY()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETCONTAINSANY() function

`SETCONTAINSANY()` tests for the existence of one or more specified values within an `IDSET` or `STRINGSET` column.

## Syntax

```sql
SETCONTAINSANY(set-column, ['test-member',...])
```

## Arguments

| Argument | Description | Data type | Additional information |
|---|---|---|---|
| `set-column` | Column to test for existence of `test-member` | `IDSET` or `STRINGSET` | `IDSET` or `STRINGSET` | * [IDSET](/docs/sql-guide/data-types/idset)<br/>* [STRINGSET](/docs/sql-guide/data-types/stringset) |
| `[ ]` | Required brackets for function |  |  |
| `test-member` | Value to test for in `set-column` | `STRING` | [STRING](/docs/sql-guide/data-types/string) |

## Returns

| Data type | Returns | When... |
|---|---|---|
| `BOOL` | `TRUE` | `set-column` contains one or more `test-member` values |

## Examples

{% include /sql-guide/create-table-segments.md %}

### Testing set membership in the select list

This query returns `TRUE`

```sql
SELECT SETCONTAINSANY
  (segment, ['BLUE', 'RED'])
  AS HasBlueOrRed
  FROM segments;
```

### Testing set membership as a where clause filter

This query returns `TRUE`.

```sql
SELECT _id, segment
  FROM segments
  WHERE SETCONTAINSANY
    (segment, ['BLUE', 'RED']);
```
