---
title: SELECT from ndjson-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT ... FROM ndjson-target

The following SELECT statements demonstrate

## Before you begin

* [CREATE TABLE ndjson-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-ndjson-target)
* [BULK INSERT from ndjson data source](/docs/sql-guide/examples/sql-eg-insert-bulk-ndjson)
* [SELECT statement](/docs/sql-guide/statements/statement-select)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM ndjson-target;
```
