---
title: SELECT examples
layout: default
parent: SQL examples
grand_parent: SQL guide
nav_order: 3
has_toc: false
---

# CREATE TABLE examples

The following SQL examples demonstrate SELECT statements using different:
* clauses
* operators
* functions

## Before you begin

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)
* [FeatureBase expressions](/docs/sql-guide/expressions/expressions-home)
* [FeatureBase functions](/docs/sql-guide/functions/functions-home)
* [FeatureBase operators](/docs/sql-guide/operators/operators-home)

## Examples

| Statement | Target table | SELECT clauses | Expressions | Functions | Operators|
|---|---|---|---|---|---|
| [SELECT...from csv-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-csv-target) | [parquet-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-csv-target) | * `TOP()`<br/>* `COUNT()` |  |  |
| [SELECT...from tuple-set-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-tuple-set-target) | [parquet-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-csv-target) |  |  |  |
| [SELECT...from ndjson-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-ndjson-target) | [parquet-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-ndjson-target) | |  |  |
| [SELECT...from orc-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-orc-target) | [orc-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-orc-target) |  |  |  |
| [SELECT...from parquet-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-parquet-target) | [parquet-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-parquet-target) |  |  |  |
