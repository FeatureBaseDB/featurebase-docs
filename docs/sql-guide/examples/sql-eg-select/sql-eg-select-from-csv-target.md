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

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [CREATE TABLE csv-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-csv-target)
* [BULK INSERT from csv data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-csv)

## SELECT COUNT

```sql
SELECT COUNT(*) FROM csv-target;
```

## SELECT TOP

```sql
SELECT TOP(10) * FROM csv-target;
```


## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM csv-target;
```
