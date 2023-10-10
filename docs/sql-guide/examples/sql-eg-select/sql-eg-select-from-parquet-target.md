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
* [SELECT examples](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-home)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [CREATE TABLE parquet-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-parquet-target)
* [BULK INSERT from parquet data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-parquet-target)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM parquet-target;


 _id | x |   y
-----+---+-------
 0  |  2 | 1.4142
 1  | 36 | 6.0000
 2  | 36 | 6.0000
 3  | 18 | 4.2426
 4  | 68 | 8.2462
 5  | 74 | 8.6023
 6  | 6  | 2.4494
 7  | 78 | 8.8317
 8  | 79 | 8.8881
 9  | 90 | 9.4868
```
