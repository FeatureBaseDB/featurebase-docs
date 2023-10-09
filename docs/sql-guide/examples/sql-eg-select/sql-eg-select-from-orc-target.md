---
title: SELECT from orc-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT ... FROM orc-target

The following SELECT statements demonstrate

## Before you begin

* [CREATE TABLE orc-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-orc-target)
* [BULK INSERT from orc data source](/docs/sql-guide/examples/sql-eg-insert-bulk-orc)
* [SELECT statement](/docs/sql-guide/statements/statement-select)

## SELECT with TOP clause

```sql
SELECT TOP(10) * FROM orc-target;
```
