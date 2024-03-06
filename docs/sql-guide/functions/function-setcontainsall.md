---
title: SETCONTAINSALL()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETCONTAINSALL() function

`SETCONTAINSALL()` tests for one or more specified values within `SET` or `SETQ` columns.

## Syntax

```sql
SETCONTAINS[ANY | ALL](<column-name>,[<value>,...])
```

## Arguments

{% includes /sql-guide/function-set-args.md %}

{: .important}
Square brackets `[...]` are required in the query.

## Returns

{% includes /sql-guide/function-set-returns.md %}

## Examples

{% include /sql-guide/create-table-segments.md %}

### Testing set membership in the select list

This query returns `true`.

```sql
select setcontainsall(segment, ['BLUE', 'RED']) as HasBlueOrRed  
    from segments;  
```

### Testing set membership as a where clause filter

This query returns `true`.

```sql
select _id, segment from segments where setcontainsall(segment, ['BLUE', 'RED']);
```
