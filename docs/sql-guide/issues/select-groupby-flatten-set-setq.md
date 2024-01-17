---
title: Issue querying SET and SETQ
layout: default
parent: FeatureBase SQL issues
grand_parent: sql-guide
nav_order: 1
---
# Issue

`SELECT...GROUP BY` queries return distinct groupings even when a value exists in each SET or SETQ column.

For example, in the following table, data is added to a STRINGSET column:

```sql

CREATE TABLE demo-table (_id id, hobby stringset, income int);

INSERT INTO demo-table VALUES
  (0, ['running', 'biking', 'swimming'], 80000),
  (1, ['biking'], 100000);
```

And a query on the table outputs the following:

```sql
SELECT * FROM demo-table;
 _id | hobby                             | income
-----+-----------------------------------+--------
   0 | ['running', 'biking', 'swimming'] |  80000
   1 | ['biking']                        | 100000
```

## Cause

SET and SETQ columns contain comma-limited arrays of values and are designed for low-cardinality data (one-to-many or many-to-many) which are separated into different tables to avoid duplication.

This means a `SELECT...GROUP BY` will return distinct groupings regardless of whether a chosen value is found in multiple columns.

For example:

```sql
SELECT hobby, sum(income) FROM demo-table GROUP BY hobby;
 hobby                             |        
-----------------------------------+--------
 ['biking']                        | 100000
 ['running', 'biking', 'swimming'] |  80000
```
## Solution

Use the `FLATTEN` hint to treat each value as a distinct result in a `SELECT...GROUP BY` query.

For example:

```sql
SELECT hobby, sum(income) FROM demo-table WITH (flatten(hobby)) GROUP BY hobby;
 hobby    |        
----------+--------
 running  |  80000
 biking   | 180000
 swimming |  80000
```

## Further information

* [IDSET data type](/docs/sql-guide/data-types/data-type-idset)
* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)
* [STRINGSET data type](/docs/sql-guide/data-types/data-type-stringset)
* [STRINGSETQ data type](/docs/sql-guide/data-types/data-type-stringsetq)
* [FLATTEN hint](/docs/sql-guide/hints/hint-flatten)
* [SELECT statement](/docs/sql-guide/statements/statement-select)
