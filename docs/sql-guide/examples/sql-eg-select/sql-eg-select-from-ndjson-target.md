---
title: SELECT FROM ndjson-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT FROM ndjson-target

The following SELECT statements demonstrate

## Before you begin

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [CREATE TABLE ndjson-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-ndjson-target)
* [BULK INSERT from ndjson data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-ndjson)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM ndjson-target;
```

## SELECT with COUNT clause

```sql
SELECT COUNT(*) FROM ndjson-target;
```
