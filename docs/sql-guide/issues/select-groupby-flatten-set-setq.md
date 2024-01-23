---
title: Issue for GROUP BY on SET and SETQ
layout: default
parent: FeatureBase SQL issues
grand_parent: SQL guide
---
# Issue

`SELECT...GROUP BY` queries return distinct groupings, rather than individual results, even when a value exists in each SET or SETQ column.

For example, the following queries setup a table and insert data:

```sql

CREATE TABLE demo-table (_id id, hobby stringset, income int);

INSERT INTO demo-table VALUES
  (0, ['running', 'biking', 'swimming'], 80000),
  (1, ['biking'], 100000);
```

A `SELECT` query returns:

```sql
SELECT * FROM demo-table;
 _id | hobby                             | income
-----+-----------------------------------+--------
   0 | ['running', 'biking', 'swimming'] |  80000
   1 | ['biking']                        | 100000
```

In a traditional RDBMS, a `SELECT...GROUP BY` query would return results for each hobby.

However, the query returns the following:

```sql
SELECT hobby, sum(income) FROM demo-table GROUP BY hobby;
 hobby                             |        
-----------------------------------+--------
 ['biking']                        | 100000
 ['running', 'biking', 'swimming'] |  80000
```

## Cause

SET and SETQ columns contain comma-limited arrays of values and are designed for low-cardinality data (one-to-many or many-to-many). This data would ordinarily be normalized to avoid duplication and reduce the database size.

This means a `SELECT...GROUP BY` query returns any array that contains an appropriate value, not the individual values.

## Solution

A `SELECT...GROUP BY` with a `FLATTEN()` hint returns individual values from the arrays as follows:

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
