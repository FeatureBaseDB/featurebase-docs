---
title: SETCONTAINS()
layout: default
parent: Functions
grand_parent: SQL guide
---

# SETCONTAINS() function

`SETCONTAINS()` returns **True** when a specified value **is found** within an `IDSET` or `STRINGSET` column..

## Syntax

```sql
SETCONTAINS(
  {idset-column, integer-value} |
  {stringset-column, 'string-value'}
  )
```

## Arguments

{% include /sql-guide/function-set-contains-excludes-args.md %}

## Returns

| Column contains | Data type | Result |
|---|---|---|
| Specified value | Boolean | True |

## Examples

{% include /sql-guide/sql-eg-table-all-datatypes-links.md %}

### SETCONTAINS a specific value

```sql
SELECT SETCONTAINS (idsetcol, '20') as Twenty FROM all-datatypes;
```

### Testing set membership as a where clause filter

This query returns `true`.

<!--check this because it returns the values in the SET column-->

```sql
select _id, segment from segments where setcontains(segment, 'BLUE');
```
