---
title: SET and SETQ functions
layout: default
parent: Functions
grand_parent: SQL guide
---

# SET functions

SET functions test for one or more values within a `SET` or `SETQ` column.

## Before you begin

* [SET and SETQ data types](/docs/sql-guide/data-types/data-type-set-setq)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [FeatureBase operators](/docs/sql-guide/operators/operators-home)

## Syntax

```sql
SET[INCLUDES | EXCLUDES](<set-column>,<value>)

SETINCLUDES[ANY | ALL](<set-column>,[<value>,...])
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| INCLUDES | Test if a single `<value>` **is** within the `<set-column>` |  |
| EXCLUDES | Test if a single `<value>` **is not** within the `<set-column>` |  |
| ANY | Test for **any** comma-separated values within the `<set-column>` | Values must be comma-separated and grouped within square brackets `[...]` |
| ALL | Test for **all** comma-separated values within the `<set-column>`  | Values must be comma-separated and grouped within square brackets `[...]` |
| `<set-column>` | Name of `SET` or `SETQ` column | [`SET` and `SETQ` data types](/docs/sql-guide/data-types/data-type-set-setq) |
| `<value>` | `ID` or `STRING` literal value | * [ID data type](/docs/sql-guide/data-types/data-type-id)<br/>* [STRING data type](/docs/sql-guide/data-types/data-type-string) |

## Additional information

### Function operators

`SET` functions can be used with [supported operators](/docs/sql-guide/operators/operators-home)

{% include /sql-guide/note-operator-logic-wrong.md %}

## Returns

Values returned depend on the position of the `SET` function within the `SELECT` query:

| Position | Returns | Example | Additional information |
|---|---|---|---|
| Within `<select-list>` | True or False | `SELECT <set-function> (<set-column>, <value>) FROM <table-name>;` | [SELECT list](/docs/sql-guide/statements/statement-select/#select-list) |
| Within `WHERE` clause | Row | `SELECT * FROM <table-name> WHERE <set-function> (<set-column>,<set-value>)` | [WHERE clause](/docs/sql-guide/statements/statement-select/#where-clause) |

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
