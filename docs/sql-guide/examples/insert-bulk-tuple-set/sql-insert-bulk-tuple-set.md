---
title: BULK INSERT with Tuple and SET
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 20
---

# BULK INSERT data using TUPLE into SET columns

This `BULK INSERT` statement uses the `TRANSFORM...TUPLE` clause to insert data in CSV format to `IDSET` and `STRINGSET` columns.

## Before you begin

* [Part 1 - CREATE TABLE for this example](/docs/sql-guide/examples/insert-bulk-tuple-set/sql-eg-create-table-tuple-set)

{% include /tips/tip-show-table-for-structure.md %}

## BULK INSERT statement

```sql
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

## Arguments

| Argument | Description |
|---|---|
| `BULK INSERT INTO ` | Define table and columns to be referenced by MAP and TRANSFORM clauses |
| `MAP` | Mapping starts at `0` for `_id` column followed by an integer corresponding to each subsequent column |
| `TRANSFORM` | Each integer corresponds to the mapping, with `TUPLE` functions applied to paired columns |
| `FROM x` | `x` indicates a multi-line string literal follows |
| `WITH` | Define the number of values to batch before insertion, the format of the values and input type |

## SELECT statements
