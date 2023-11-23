---
title: INSERT INTO all-types
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to all-types table

The INSERT and BULK INSERT statement can be used to add data to the all-types table.

The `TUPLE()` function is required for SETQ data types

## Before you begin
* [INSERT examples](/docs/sql-guide/examples/sql-eg-home/#insert-examples)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)
* [TUPLE() function](/docs/sql-guide/functions/function-tuple)
* [CSV data source](/assets/sql-eg/insert-bulk-all-cols.csv){:target="_blank"}
* [CREATE TABLE all-types](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-types)


## CSV data source

{: .note}
This data source also available at `https://docs.featurebase.com/assets/sql-eg/sql-eg-all-col.csv`

```csv
id,intcol,boolcol,decimalcol,idcol,idsetcol,idsetcolq,stringcol,stringsetcol,stringscetcolq,timestampcol,vectorcol
1,1,true,1.23,123,123;234;345,456;567;678;789,first row, this;is;the;first;row, also;the;first;row,2023-11-22T04:46:59, 8.90
```

## INSERT statement

```sql
INSERT INTO all-types (_id, intcol, boolcol, decimalcol, idcol, idsetcol, idsetcolq, stringcol, stringsetcol, stringsetcolq, timestampcol, vectorcol)
VALUES (
  001,
  1,
  true,
  10.10,
  01,
  [10, 20, 30],
  {'2023-11-21T00:00:00Z', [100, 200, 300]},
  'string-col',
  ['ten', 'twenty', 'thirty'],
  {'2023-11-21T00:00:00Z', ['one hundred', 'two hundred', 'three hundred']},
  '2023-11-21T00:00:00Z',
  [0.1,0.2,0.3,0.4,0.5]
);
```

## BULK INSERT to all-types from CSV

The following BULK INSERT statement uses the `TUPLE()` function to:
* add the timestamp from timestampcol
* as the timestamp used for the array of values to be added to idsetqcol and stringsetqcol
* combine timestamp values from timestampcol, with

```
BULK INSERT INTO all-types (_id, intcol, boolcol, decimalcol, idcol, idsetcol, idsetqcol, stringcol, stringsetcol, stringsetqcol, timestampcol, vectorcol)
MAP(
  0 ID,
  1 BOOL,
  2 DECIMAL(2),
  3 ID,
  4 IDSET,
  5 IDSETQ,
  6 STRING,
  7 STRINGSET,
  8 STRINGSETQ,
  9 TIMESTAMP,
  10 VECTOR(5)
  )
  TRANSFORM(
    @0,
    @1,
    @2,
    @3,
    @4,
    TUPLE (@9,@5)
    @6,
    @7,
    TUPLE (@9,@8)
    @9,
    @10)
FROM
    'https://github.com/FeatureBaseDB/featurebase-docs/blob/sql-example-consolidate/assets/sql-eg/insert-bulk-all-cols.csv'
WITH
    BATCHSIZE 100000
    FORMAT 'CSV'
    INPUT 'URL'
    HEADER_ROW;
```



ERROR FOR IDSETQ - NEEDS TRANSFORM CLAUSE
## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `INSERT INTO` | Insert data to the `all-cols` table `<column-list>` | [INSERT statement](/docs/sql-guide/statements/statement-insert)
| `[<value>,...]` | Required square brackets around array of values to insert into SET and SETQ columns, and vector column |  |
| `{<timestamp>,[<value>,...]}` | Required curly brackets to gather timestamped `[<set>]` values to insert into a SETQ column |
| `[<decimal-val>,...]` | Decimal value array to insert into Vector data type column. |

## Next step

* [SELECT FROM all-types](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-all-types)
