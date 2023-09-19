---
title: TUPLE()
layout: default
parent: Functions
grand_parent: SQL guide
---

# TUPLE() function

`TUPLE()` is a mathematical function that returns an ordered list of values corresponding to and derived from a supplied argument.

## Syntax

```sql
TUPLE (
  [ordinal_position,...] |
  [column_name,...]
  )
```
<!-- original syntax
TUPLE(expr1,expr2,...)
-->

## Arguments

| Argument | Description | Required | Further information |
|---|---|---|---|
| `ordinal_position` | An ordinal position defined in the `MAP` clause of a `BULK INSERT` statement | When used in BULK INSERT `TRANSFORM` clause | [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk) |
| `column_name`| Table column name in existing table | When used in SELECT statement `select-list` | [SELECT statement](/docs/sql-guide/statements/statement-select) |

## Returns

| Data type | Value |
|---|---|---|
| tuple | tuple with an element per evaluated expression `(eval_expr1,eval_expr2,...)` |

{% include /sql-guide/setq-tuple-returns.md %}

## Examples

### Source table definition

```sql
create table if not exists tuple-demo (
    _id STRING,
    time_col TIMESTAMP,
    stringset_col STRINGSET,
    ideset_col IDSET,
    stringsetq_col STRINGSETQ timequantum 'YMD',
    idesetq_col IDSETQ timequantum 'Y'
);
```

{% include /sql-guide/insert-bulk-transform-tuple-eg.md %}

### SELECT statement with `TUPLE()`

```sql
SELECT _id, TUPLE(time_col, stringset_col, idset_col)
  AS tup
  FROM tuple-demo;

_id | tup
----+-------------------------------------
  A | (2013-07-15T01:18:46Z,stringset1, 1)
  B | (2014-07-15T01:18:46Z,stringset2, 2)
```
