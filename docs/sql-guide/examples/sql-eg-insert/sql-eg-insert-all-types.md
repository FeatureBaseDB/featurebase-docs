---
title: INSERT INTO all-types
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to all-types table

Add data to the `all-types` table using INSERT and BULK INSERT statements that feature:
* the `TUPLE()` function for SETQ data types
* the `TRANSFORM` clause for BULK INSERT

## Before you begin
* [INSERT examples](/docs/sql-guide/examples/sql-eg-home/#insert-examples)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [IDENTIFIER function](/docs/sql-guide/functions/function-identifier)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)
* [CREATE TABLE all-types](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-types)

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
INSERT INTO all-types (_id, stringcol)
VALUES (IDENTIFIER('all-types'), '*');
```

## INSERT STATEMENT for all columns

```sql
INSERT INTO all-types (_id, intcol, boolcol, decimalcol, idcol, idsetcol, idsetqcol, stringcol, stringsetcol, stringsetqcol, timestampcol, vectorcol)
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
  {'2023-11-21T00:00:00Z', ['one hundred', 'two hundred', 'three hundred']},
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

<!-- commented out due to Jira https://molecula.atlassian.net/browse/CLOUD-1818 which details an error experienced for IDSETQ and STRINGSETQ data types

## BULK INSERT to all-types from CSV

The following BULK INSERT statement:
* uses the `TRANSFORM` clause with `TUPLE()` function
* to combine values from a CSV file
* for `SETQ` data types

The statement also includes `WITH HEADER_ROW` to account for the first row of the CSV data source.

```
BULK INSERT INTO all-types (
  _id,
  intcol,
  boolcol,
  decimalcol,
  idcol,
  idsetcol,
  idsetqcol,
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
  5 IDSETQ,
  6 STRING,
  7 STRINGSET,
  8 STRINGSETQ,
  9 TIMESTAMP,
  10 VECTOR(5))
TRANSFORM(
    @0,
    @1,
    @2,
    @3,
    @4,
    TUPLE(@9,@5),
    @6,
    @7,
    TUPLE(@9,@8),
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


## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `INSERT INTO` | Insert data to the `all-cols` table `<column-list>` | [INSERT statement](/docs/sql-guide/statements/statement-insert)
| `[<value>,...]` | Required square brackets around array of values to insert into SET and SETQ columns, and vector column |  |
| `{<timestamp>,[<value>,...]}` | Required curly brackets to gather timestamped `[<set>]` values to insert into a SETQ column |
| `[<decimal-val>,...]` | Decimal value array to insert into Vector data type column. |

-->

## Next step

* [SELECT FROM all-types](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-all-types)
