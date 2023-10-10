---
title: SELECT FROM parquet-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT FROM parquet-target

The following SELECT statements demonstrate

## Before you begin

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [CREATE TABLE parquet-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-parquet-target)
* [BULK INSERT from parquet data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-parquet)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM parquet-target;
```
