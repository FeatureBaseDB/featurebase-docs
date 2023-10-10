---
title: BULK INSERT Parquet example
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# BULK INSERT example using Apache Parquet formatted data source

This BULK INSERT statement:
* reads data from an Apache Parquet formatted data source found in a destination URL
* maps data to destination table columns found in `parquet-target` table
* inserts the data

## Before you begin

* [Learn about the Apache Parquet format](https://parquet.apache.org/){:target="_blank"}
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
* [CREATE TABLE parquet-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-parquet-target)

{% include /tips/tip-show-table-for-structure.md %}

## BULK INSERT statement

```sql
BULK INSERT
  INTO parquet-target(_id,x,y )
  MAP(
    'id' id,
    'intval' int,
    'decval' decimal(4) )
  FROM 'https://s3.amazonaws.com/todd-scratch.molecula.com/sample.parquet'
  WITH
    FORMAT 'PARQUET'
    INPUT 'URL';
```

## Next step

* [SELECT...FROM parquet-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-parquet-target)
