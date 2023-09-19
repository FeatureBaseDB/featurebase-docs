---
title: TUPLE()
layout: default
parent: Functions
grand_parent: SQL guide
---

# TUPLE() function

The `TUPLE()` function takes in n arguments and returns a tuple containing an element for each argument.

## Syntax

```
TUPLE (
  [ordinal_position,...] |
  [column_name,...]
  )


TUPLE(expr1,expr2,...)
```

## Arguments

| Argument | Description | Required | Further information |
|---|---|---|---|
| `ordinal_position` | An ordinal position defined in the `MAP` clause of a `BULK INSERT` statement | For BULK INSERT `TRANSFORM` clause | [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk) |
| `column_name`| Table column name in existing table | Optional in SELECT statement | [SELECT statement](/docs/sql-guide/statements/statement-select) |

## Returns

| Data type | Value |
|---|---|---|
| tuple | tuple with an element per evaluated expression `(eval_expr1,eval_expr2,...)` |

| Source data type | Returns |
|---|---|
| `IDSETQ` | timestamp and corresponding integer value |
| `STRINGSETQ` | timestamp and corresponding string value |

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

### BULK INSERT statement with `TUPLE()`

BULK INSERT INTO tuple-demo(
    _id,
    time_col,
    stringset_col,
    ideset_col,
    stringsetq_col,
    idesetq_col
  )
  MAP (
    0 STRING,
    1 TIMESTAMP,
    2 STRINGSET,
    3 IDSET
  )
  TRANSFORM(
    @0,
    @1,
    @2,
    @3,
    TUPLE(@1,@2),
    TUPLE(@1,@3)
  )
  FROM x'
    A,2013-07-15T01:18:46Z,stringset1, 1
    B,2014-07-15T01:18:46Z,stringset2, 2
  '
  WITH
    BATCHSIZE 10000
    format 'CSV'
    input 'INLINE';
```

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
