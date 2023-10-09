---
title: BULK INSERT Parquet example
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# BULK INSERT example using Apache Parquet formatted data source



## Before you begin

* [Learn about the Apache Parquet format](https://parquet.apache.org/){:target="_blank"}
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
* [CREATE TABLE parquet-sample](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-parquet-sample)

{% include /tips/tip-show-table-for-structure.md %}

## BULK INSERT statement

```sql
BULK INSERT
      INTO parquet-target(_id,x,y )
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
SELECT TOP(10) * FROM parquet-sample;
```

## Further information

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
