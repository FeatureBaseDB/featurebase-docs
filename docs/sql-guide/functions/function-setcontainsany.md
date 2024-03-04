---
title: SETCONTAINSANY()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETCONTAINSANY() function

`SETCONTAINSANY()` tests for one or more specified values within `SET` or `SETQ` columns.

## Syntax

```sql
SETCONTAINSANY(<set-column>,[<value,...])
```

## Arguments

{% include /sql-guide/function-set-args.md %}

{: .important}
Square brackets `[...]` are required in the query.

## Returns

{% include /sql-guide/function-set-returns.md %}

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
