---
title: SELECT examples
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 10
---

# CREATE TABLE examples

The following SQL examples demonstrate SELECT statements using different:
* clauses
* operators
* functions

## Before you begin

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)
* [FeatureBase expressions](/docs/sql-guide/data-types/expressions-home)
* [FeatureBase functions](/docs/sql-guide/data-types/functions-home)
* [FeatureBase operators](/docs/sql-guide/data-types/operators-home)

## Examples

| Statement | Target table | SELECT clauses | Expressions | Functions | Operators|
|---|---|---|---|---|---|
|  | [parquet-target](/docs/sql-guide/) | * `TOP`<br/>* `FROM` |  |  |



##

```sql
SELECT TOP(10) * FROM parquet-target;
```
