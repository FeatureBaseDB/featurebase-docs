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
This data source also available at `https://docs.featurebase.com/assets/sql-eg/sql-eg-all-datatypes.csv`

```csv
id,boolcol,decimalcol,idcol,idsetcol,idsetcolq,intcol,stringcol,stringsetcol,stringscetcolq,timestampcol,vectorcol
004,true,1.23,123,123;234;345,456;567;678;789,1,first row, this;is;the;first;row, also;the;first;row,2023-11-22T04:46:59, 8.90
```
-->

## INSERT statements

<!--NOTE: Numbering in below and the /assets/sql-eg/insert-bulk-all-cols.csv data source need to be kept in sync otherwise SELECT queries that follow will have different results-->

## INSERT STATEMENT using IDENTIFIER function

This INSERT statement:
* uses the IDENTIFIER() function to automatically add an identifier to the `_id` column for this row
* inserts values which will be queried using the ASCII and CHAR functions
* adds a single string value into the STRINGSET data type column


```sql
INSERT INTO all-datatypes (_id, intcol, stringcol, stringsetcol)
VALUES
  (IDENTIFIER('all-datatypes'), 42, '*', ['int val for CHAR function', 'string val for ASCII function']);
```

* [ASCII function](/docs/sql-guide/functions/function-ascii)
* [CHAR function](/docs/sql-guide/functions/function-char)


## INSERT STATEMENT for all columns

```sql
INSERT INTO all-datatypes (_id, boolcol, decimalcol, idcol, idsetcol, idsetqcol, intcol, stringcol, stringsetcol, stringsetqcol, timestampcol, vectorcol)
VALUES
  (002,
  true,
  7.543,
  01,
  [10, 20, 30],
  {'2023-11-21T00:00:00Z', [100, 200, 300]},
  2,
  'string-col',
  ['ten', 'twenty', 'thirty'],
  {'2023-11-21T02:01:03Z', ['one hundred', 'two hundred', 'three hundred']},
  '2023-11-21T00:00:00Z',
  [0.1,0.2,0.3,0.4,0.5]),
  (003,
  false,
  11.11,
  11,
  [11, 22, 33],
  {'2024-11-21T00:00:00Z', [111, 222, 333]},
  3,
  'another string-col',
  ['eleven', 'twenty two', 'thirty three'],
  {'2024-11-21T00:00:00Z', ['one hundred and eleven', 'two hundred and twenty two', 'three hundred and thirty three']},
  '2024-11-21T00:00:00Z',
  [0.11,0.22,0.33,0.44,0.55]);
```


<!-- Commented out because SQL fails with errors because of VECTOR FB-
## BULK INSERT to all-datatypes from CSV

A SETQ column requires:
* one TIMESTAMP as an identifier,
* for an array of one or more values

A BULK INSERT statement requires the following to successfully INSERT values to SETQ data types:
* MAP clause numeric identifier for:
  * SETQ data type uses SET to correspond with the array of values in the data source (e.g., IDSET instead of IDSETQ)
  * TIMESTAMP
* TRANSFORM clause that combines above MAP values: `TUPLE(@<timestamp-map-id>,@<setq-map-identifier>)`

The `WITH` clause includes `WITH HEADER ROW` to ignore the first row in the CSV data source

<!-- need to check vector mapping here because this throws errors!-->
```sql
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
  2 DECIMAL(3),
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
    @8,
    TUPLE(@10,@9),
    @10,
    @11)
FROM
    'https://raw.githubusercontent.com/FeatureBaseDB/featurebase-docs/sql-eg-rework/assets/sql-eg/insert-bulk-all-datatypes-no-vector.csv'
WITH
    BATCHSIZE 100000
    FORMAT 'CSV'
    INPUT 'URL'
    HEADER_ROW;
```

## Next step

* [SELECT FROM all-datatypes](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-all-datatypes)
