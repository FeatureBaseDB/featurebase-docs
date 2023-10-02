---
title: BULK INSERT Parquet example
layout: default
parent: SQL Examples
grand_parent: SQL guide
---

# BULK INSERT example using Apache Parquet formatted data source

This example demonstrates how to:

* Create a FeatureBase table with a required structure
* Copy and transform data from an parquet source
* Use the `BULK INSERT` statement to copy data from the source to the target table.

## Before you begin

{% include /sql-guide/bulk-insert-eg-before-begin.md%}
* [Learn about the Apache Parquet format](https://parquet.apache.org/){:target="_blank"}

## Step 1: create table

```sql
CREATE TABLE sample (
    _id id,
    x int,
    y decimal(4)
);
```

## Step 2: ingest data

```sql
BULK INSERT
      INTO sample(_id,x,y )
      MAP(
    'id' id,
    'intval' int,
    'decval' decimal(4) )
 FROM
	'https://s3.amazonaws.com/todd-scratch.molecula.com/sample.parquet'
 WITH
    FORMAT 'PARQUET'
    INPUT 'URL';
```


## Step 3: query the data

```sql
SELECT TOP(10) * FROM sample;
```

## Further information

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)