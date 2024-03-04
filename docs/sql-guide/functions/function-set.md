---
title: SET and SETQ functions
layout: default
parent: Functions
grand_parent: SQL guide
---

# SET functions

SET functions used in `SELECT` queries test for a value within a `SET` or `SETQ` column then output a result.

## Syntax

```sql
SET[INCLUDES | EXCLUDES](<set-column>,<value>)

SETINCLUDES[ANY | ALL](<set-column>,[<value>,...])
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| INCLUDES | `<value>` is within the `<set-column>` |  |
| EXCLUDES | `<value>` is NOT within `<set-column>` |  |
| ANY | One or more `[<value>,...]` are found within `<set-column>` | `[...]` required by function |
| ALL | All `[<value>,...]` are found within `<set-column>` | `[...]` required by function |
| `<set-column>` | Name of `SET` or `SETQ` column | [`SET` and `SETQ` data types](/docs/sql-guide/data-types/data-type-set-setq) |
| `<value>` | Value to search for |  |

## Additional information

* Position of `SET` function in `SELECT` query will change results
* Chain two or more `SET` functions using `WHERE...AND` clause

## Returns

Values returned depend on the position of the `SET` function within the `SELECT` query:

| Position | Returns | Example |
|---|---|---|
| Within `<select-list>` | True or False | `SELECT <set-function> (<set-column>, <value>) FROM <table-name>;` |
| Within `WHERE` clause | Row | `SELECT * FROM <table-name> WHERE <set-function> (<set-column>,<set-value>)` |

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
