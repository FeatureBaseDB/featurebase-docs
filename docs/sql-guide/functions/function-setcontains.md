---
title: SETCONTAINS()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETCONTAINS() function

`SETCONTAINS()` tests for a value within `SET` or `SETQ` column.

## Syntax

```sql
SETCONTAINS(<set-column>, <value>)
```

## Arguments

{% include /sql-guide/function-set-args.md %}

## Returns

{% include /sql-guide/function-set-returns.md %}

## Examples

### Testing set membership in the select list

{% include /sql-guide/create-table-segments.md %}

This query returns `true`.

```sql
select setcontains(segment, 'BLUE') as HasBlue  
    from segments;  
```

### Testing set membership as a where clause filter

This query returns the row(s) containing the SETCONTAINS value:

```sql
select _id, segment from segments where setcontains(segment, 'BLUE');
```
