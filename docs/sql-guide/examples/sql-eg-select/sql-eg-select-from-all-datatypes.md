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

## heading goes here

| Expression | Function | Operator | Statement |
|---|---|---|---|---|
|  | ASCII |  | `SELECT stringcol, ASCII(stringcol) AS converted-to-ascii FROM all-datatypes WHERE _id=1;` |
|  | CHAR |  | `SELECT stringcol, CHAR(stringcol) AS converted-from-ascii FROM all-datatypes WHERE _id=2;` |
|  | COUNT |  | `SELECT COUNT(*) as how-many-items, stringsetcol FROM all-datatypes GROUP BY stringsetcol;` |
|  | COSINE_DISTANCE |  |  `SELECT _id, cosine_distance([-0.027067707851529, 0.009963636286557, 0.034747183322906, 0.490922, 0.0000002], vectorcol) AS rank FROM all-datatypes;` |
|  | DATE_TRUNC |  | `SELECT _id, timestampcol, DATE_TRUNC('hh',timestampcol) AS convert-to-hours FROM all-datatypes;` |
|  | SETCONTAINS | `SELECT _id, SETCONTAINS(idsetcol, 20) AS results FROM all-datatypes ORDER BY idcol;` |
|  |  | AVG | `SELECT AVG(intcol) AS column-average FROM all-datatypes;` |
|  |  | SUM | `SELECT stringsetqcol, SUM(decimalcol) FROM doctest WITH (FLATTEN(stringsetqcol)) GROUP BY stringsetqcol;` |


## SETCONTAINS functions

```sql


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
