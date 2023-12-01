---
title: INSERT INTO all-datatypes
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to all-datatypes table

Add data to the `all-datatypes` table using INSERT and BULK INSERT statements that feature:
* the `TUPLE()` function for SETQ data types
* the `TRANSFORM` clause for BULK INSERT

## Before you begin
* [INSERT examples](/docs/sql-guide/examples/sql-eg-home/#insert-examples)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [IDENTIFIER function](/docs/sql-guide/functions/function-identifier)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)
* [CREATE TABLE all-datatypes](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-datatypes)

<!-- commented out because it applies to the BULK INSERT statement that doesn't work
* [TUPLE() function](/docs/sql-guide/functions/function-tuple)
* [CSV data source](/assets/sql-eg/insert-bulk-all-cols.csv){:target="_blank"}
## CSV data source

{: .note}
This data source also available at `https://docs.featurebase.com/assets/sql-eg/sql-eg-all-col.csv`

```csv
id,intcol,boolcol,decimalcol,idcol,idsetcol,idsetcolq,stringcol,stringsetcol,stringscetcolq,timestampcol,vectorcol
004,1,true,1.23,123,123;234;345,456;567;678;789,first row, this;is;the;first;row, also;the;first;row,2023-11-22T04:46:59, 8.90
```
--->

## INSERT statements

<!--NOTE: Numbering in below and the /assets/sql-eg/insert-bulk-all-cols.csv data source need to be kept in sync otherwise SELECT queries that follow will have different results-->

## INSERT STATEMENT using IDENTIFIER function

The IDENTIFIER() function auto-numbers column `_id` values

```sql
INSERT INTO all-datatypes (_id, stringcol)
VALUES (IDENTIFIER('all-datatypes'), '*');
```

## INSERT STATEMENT for all columns

```sql
INSERT INTO all-datatypes (_id, intcol, boolcol, decimalcol, idcol, idsetcol, idsetqcol, stringcol, stringsetcol, stringsetqcol, timestampcol, vectorcol)
VALUES
  (002,
  1,
  true,
  10.10,
  01,
  [10, 20, 30],
  {'2023-11-21T00:00:00Z', [100, 200, 300]},
  'string-col',
  ['ten', 'twenty', 'thirty'],
  {'2023-11-21T02:01:03Z', ['one hundred', 'two hundred', 'three hundred']},
  '2023-11-21T00:00:00Z',
  [0.1,0.2,0.3,0.4,0.5]),
  (003,
  2,
  false,
  11.11,
  11,
  [11, 22, 33],
  {'2024-11-21T00:00:00Z', [111, 222, 333]},
  'another string-col',
  ['eleven', 'twenty two', 'thirty three'],
  {'2024-11-21T00:00:00Z', ['one hundred and eleven', 'two hundred and twenty two', 'three hundred and thirty three']},
  '2024-11-21T00:00:00Z',
  [0.11,0.22,0.33,0.44,0.55]);
```

<!-- this throws error query error: [36:5] an expression of type 'tuple(timestamp, stringset)' cannot be assigned to type 'stringset'
Updated destination URL to raw because the GH page caused errors.


## BULK INSERT to all-datatypes from CSV

The following BULK INSERT statement:
* MAPs `SETQ` data types as `idset` and `stringset`
* TRANSFORMs data intended for `SETQ` data types using the `TUPLE` function to combine TIMESTAMP and semicolon-separated values into `SETQ` target columns
* Includes `WITH HEADER ROW` to ignore the first row in the CSV data source

```
BULK INSERT INTO all-datatypes (
  _id,
  boolcol,
  decimalcol,
  idcol,
  idsetcol,
  idsetqcol,
  intcol,
  stringcol,
  stringsetcol,
  stringsetqcol,
  timestampcol,
  vectorcol)
MAP(
  0 ID,
  1 BOOL,
  2 DECIMAL(2),
  3 ID,
  4 IDSET,
  5 IDSET,
  6 INT,
  7 STRING,
  8 STRINGSET,
  9 STRINGSET,
  10 TIMESTAMP,
  11 VECTOR(5))
TRANSFORM(
    @0,
    @1,
    @2,
    @3,
    @4,
    TUPLE(@10,@5),
    @6,
    @7,
    TUPLE(@10,@9),
    @9,
    @10,
    @11)
FROM
    'https://raw.githubusercontent.com/FeatureBaseDB/featurebase-docs/sql-example-consolidate/assets/sql-eg/insert-bulk-all-cols2.csv'
WITH
    BATCHSIZE 100000
    FORMAT 'CSV'
    INPUT 'URL'
    HEADER_ROW;
```

-->

## Next step

* [SELECT FROM all-datatypes](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-all-datatypes)
