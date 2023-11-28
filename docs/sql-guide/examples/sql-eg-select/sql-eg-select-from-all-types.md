---
title: SELECT FROM all-types
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT FROM all-types

The following SELECT statements return data from the `all-types` table.

## Before you begin
* [SELECT examples](/docs/sql-guide/examples/sql-eg-home/#select-examples)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [COSINE_DISTANCE function](/docs/sql-guide/functions/function-cosine-distance)
* [CREATE TABLE all-types](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-types)
* [INSERT INTO all-types](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-all-types)

## SELECT with Operators

```sql
SELECT AVG(intcol) AS column-average FROM all-types;

column-average /
---------------+
    1.5000
```

## SELECT with functions

### ASCII function

```sql
SELECT stringcol, ASCII(stringcol) AS converted-to-ascii FROM all-types WHERE _id=3;

stringcol | converted-to-ascii
----------+-------------------
     *    |        42
```

### COUNT function
```
SELECT COUNT(*) as how-many-items, stringsetcol FROM all-types
GROUP BY stringsetcol;

 howmany | stringsetcol
-----+--------------------------
  1 | ten, twenty, thirty
  1 | eleven, twenty two, thirty three
```

### DATE_TRUNC function

```sql
SELECT timestampcol, DATE_TRUNC('hh',timestampcol) AS convert-to-hours FROM all-types;

timestampcol | convert-to-hours
-------------|-----------------
2023-11-21T00:00:00Z | 2023-11-21T00:00:00.000
2024-11-21T00:00:00Z | 2024-11-21T00:00:00.000
null,null
```



## SELECT COSINE DISTANCE()

```sql
SELECT _id, description, cosine_distance(
  [-0.027067707851529, 0.009963636286557, 0.034747183322906], cosvec-col)
   AS rank
   FROM cosvec-target;

id |     description     |   rank
---+---------------------+----------
 0 | Three vector values | 1.2763582

```

## Further information

* [SQL Guide examples](/docs/sql-guide/examples/sql-eg-home)
