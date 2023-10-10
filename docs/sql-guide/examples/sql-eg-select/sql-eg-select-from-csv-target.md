---
title: SELECT from csv-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT ... FROM csv-target

The following SELECT statements demonstrate

## Before you begin

* [CREATE TABLE csv-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-csv-target)
* [BULK INSERT from csv data source](/docs/sql-guide/examples/sql-eg-insert-bulk-csv)
* [SELECT statement](/docs/sql-guide/statements/statement-select)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM csv-target;
```