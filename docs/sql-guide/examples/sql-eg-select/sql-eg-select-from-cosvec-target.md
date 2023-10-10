---
title: SELECT FROM cosvec-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT FROM cosvec-target

## Before you begin
* [SELECT examples](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-home)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [COSINE_DISTANCE function](/docs/sql-guide/functions/function-cosine-distance)
* [CREATE TABLE cosvec-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-cosvec-target)
* [INSERT INTO cosvec-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-cosvec-target)

## SELECT COSINE DISTANCE()

```sql
SELECT id, description, cosine_distance(
  [-0.027067707851529, 0.009963636286557, 0.034747183322906], dabed)
   AS rank
   FROM cosvec-target;
```
