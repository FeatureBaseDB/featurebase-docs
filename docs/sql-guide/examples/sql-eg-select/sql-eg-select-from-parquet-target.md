---
title: SELECT from parquet-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT ... FROM parquet-target

The following SELECT statements demonstrate

## Before you begin

* [CREATE TABLE parquet-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-parquet-target)
* [BULK INSERT from parquet data source](/docs/sql-guide/examples/sql-eg-insert-bulk-parquet)
* [SELECT statement](/docs/sql-guide/statements/statement-select)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM parquet-target;
```
