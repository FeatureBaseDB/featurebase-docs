---
title: SELECT FROM all-datatypes
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---
# SELECT FROM all-datatypes
{: .no_toc }

The following SELECT statements return data from the `all-datatypes` table.

{% include page-toc.md %}

## Before you begin
* [SELECT examples](/docs/sql-guide/examples/sql-eg-home/#select-examples)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [COSINE_DISTANCE function](/docs/sql-guide/functions/function-cosine-distance)
* [CREATE TABLE all-datatypes](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-datatypes)
* [INSERT INTO all-datatypes](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-all-datatypes)

## SELECT on each data type

### SELECT `BOOL` data type

```sql
SELECT * FROM all-datatypes WHERE boolcol=true;
```

### SELECT


## SELECT with Operators

```sql
SELECT AVG(intcol) AS column-average FROM all-datatypes;

column-average |
---------------+
    1.5000
```

## SELECT with functions

### ASCII function
The ASCII function converts a single string character to its equivalent ASCII.
```sql
SELECT stringcol, ASCII(stringcol) AS converted-to-ascii FROM all-datatypes WHERE _id=1;

stringcol | converted-to-ascii
----------+-------------------
     *    |        42
```
<!--
### COALESCE function
Relies on https://github.com/FeatureBaseDB/featurebase-docs/pull/208/files

Idea: add a value in place of null in row 1 of all-datatypes using COALESCE function.

Can this be used to insert a value? As in, can INSERT INTO be used with a SELECT FROM?

```sql
SELECT _id, COALESCE()

```
-->
### COUNT function
```
SELECT COUNT(*) as how-many-items, stringsetcol FROM all-datatypes
GROUP BY stringsetcol;

 how-many-items | stringsetcol
--------+------------------------
  1     | null
  1     | ten, twenty, thirty
  1     | eleven, twenty two, thirty three
```

### DATE_TRUNC function

```sql
SELECT _id, timestampcol, DATE_TRUNC('hh',timestampcol) AS convert-to-hours FROM all-datatypes;

_id | timestampcol         | convert-to-hours
----+----------------------+------------------------
 1  | null                 |  null
 2  | 2023-11-21T00:00:00Z | 2023-11-21T00:00:00.000
 3  | 2024-11-21T00:00:00Z | 2024-11-21T00:00:00.000
```

## SELECT COSINE DISTANCE()

```sql
SELECT _id, cosine_distance(
  [-0.027067707851529, 0.009963636286557, 0.034747183322906, 0.490922, 0.0000002], vectorcol)
   AS rank
   FROM all-datatypes;

 _id |  rank
-----+-----------
 2   | 0.4363491
 3   | 0.4363491
```

## SETCONTAINS functions

```sql
SELECT _id, SETCONTAINS(idsetcol, 20) AS results FROM all-datatypes;

 _id | results
-----+---------
1    | null
2    | true
3    | false

SELECT _id, SETCONTAINSANY (idsetcol, [20, 30]) AS results FROM all-datatypes;

 _id  | results
------+--------
  1   | null
  2   | true
  3   | false

SELECT _id, SETCONTAINSALL (stringsetcol, ['ten', 'thirty']) AS results FROM all-datatypes;

_id  | results
------+--------
  1   | null
  2   | true
  3   | false
```

### STR() function

<!-- STR function values need to be confirmed added into the insert statements so can just move the examples here from STR function -->

```sql
select _id, str(segment, 10, 2) as text from segments;


## Further information

* [SQL Guide examples](/docs/sql-guide/examples/sql-eg-home)
