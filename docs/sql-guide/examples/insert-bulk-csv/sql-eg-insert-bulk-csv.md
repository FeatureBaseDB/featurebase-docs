---
title: BULK INSERT CSV example
layout: default
parent: SQL Examples
grand_parent: SQL guide
---

# BULK INSERT example using CSV formatted data source

This `BULK INSERT` example demonstrates how to:
* use the `MAP` clause to identify which column data from the CSV file is mapped to
*
This example demonstrates how to:

* Copy and transform data from an CSV source
* Use the `BULK INSERT` statement to copy data from the source to the target table.

{: .warning}
The CSV file is 147MB and may take some time to download.

## Before you begin

* [CREATE destination table](/docs/sql-guide/examples/insert-bulk-csv/sql-eg-create-table-age)
* [Learn about the Comma separated value (CSV) format](https://www.rfc-editor.org/rfc/rfc4180){:target="_blank"}

## BULK INSERT statement

```sql
BULK INSERT
INTO age (_id, name, description, gender, country, occupation,
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
| `BULK INSERT INTO <column-list>` | The destination table `<column-list>` is used by the `MAP` clause |
| `MAP` clause | The clause maps to the `<column-list>` in sequential order, starting at `0` which corresponds to the `_id` column |
| `FROM` clause | The URL of the CSV data source |
| `WITH` clause | States the number of rows to batch, data source `FORMAT` and the method of `INPUT` and that the data source has a `HEADER_ROW` |

## Run queries on the data

```sql
SELECT COUNT(*) FROM age;
```
```sql
SELECT TOP(10) * FROM age;
```

## Further information

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
