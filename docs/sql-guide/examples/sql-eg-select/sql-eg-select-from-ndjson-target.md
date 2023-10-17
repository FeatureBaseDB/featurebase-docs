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
* [SELECT examples](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-home)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [CREATE TABLE ndjson-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-ndjson-target)
* [BULK INSERT from ndjson data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-ndjson-target)

## SELECT with TOP clause

```sql
SELECT TOP(3) _id, actor_url FROM ndjson-target;

    _id    | actor_url
-----------+-------------------------------------
2489651045 | https://api.github.com/users/petroav
2489651051 | https://api.github.com/users/rspt
2489651053 | https://api.github.com/users/izuzero
```

## SELECT with COUNT clause

```sql
SELECT COUNT(*) FROM ndjson-target;

COUNT(*) |
---------
11351
```
## SELECT with COUNT (DISTINCT) clause

```sql
SELECT COUNT(DISTINCT actor_url) AS unique-urls FROM ndjson-target;

unique-urls |
------------+
5250
```

## Further information

* [SQL Guide examples](/docs/sql-guide/examples/sql-eg-home)
