---
title: BULK INSERT CSV example
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# BULK INSERT example using CSV formatted data source

This `BULK INSERT` example demonstrates how source data at a specified URL can be mapped to destination table columns.

{: .warning}
The CSV file is 147MB and may take some time to download.

## Before you begin

* [Learn about the Comma separated value (CSV) format](https://www.rfc-editor.org/rfc/rfc4180){:target="_blank"}
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
* [CREATE TABLE csv-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-create-table-csv-target)

## BULK INSERT statement

```sql
BULK INSERT
INTO csv-target (_id, name, description, gender, country, occupation,
    birth_year, death_year, death_manner, birth_age )
MAP(0 STRING,
1 STRING,
2 STRING,
3 STRING,
4 STRING,
5 STRING,
6 INT,
7 INT,
8 STRING,
9 INT )
FROM
    'https://featurebase-public-data.s3.us-east-2.amazonaws.com/age.csv'
WITH
    BATCHSIZE 100000
    FORMAT 'CSV'
    INPUT 'URL'
    HEADER_ROW;
```

## Arguments

| Argument | Description |
|---|---|
| `BULK INSERT INTO` | The destination table `<column-list>` is used by the `MAP` clause |
| `MAP` clause | A sequential order of integer values, starting at 0 that map to the <column-list> |
| `FROM` clause | The URL of the CSV data source |
| `WITH` clause | States the number of rows to batch, data source `FORMAT` and the method of `INPUT` and that the data source has a `HEADER_ROW` |

## Next step

* [Run SELECT queries on csv-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-csv-target)

## Further information

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
