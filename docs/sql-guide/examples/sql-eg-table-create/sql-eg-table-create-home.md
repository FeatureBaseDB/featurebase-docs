---
title: CREATE TABLE examples
layout: default
parent: SQL examples
grand_parent: SQL guide
nav_order: 10
---

# CREATE TABLE examples

The following SQL examples demonstrate table creation with different data types, constraints and options.

## Before you begin

* [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)

## Examples

| Statement | Data types | Table options | Relates to |
|---|---|---|---|
| [CREATE TABLE csv-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-csv-target) | [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string)|  | [BULK INSERT CSV data source](/docs/sql-guide/examples/sql-eg-insert-bulk/sql-eg-insert-bulk-csv) |
| [CREATE TABLE ndjson-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-ndjson-target) |  | [BULK INSERT NDJSON data source](/docs/sql-guide/examples/sql-eg-insert-bulk/sql-eg-insert-bulk-ndjson) |
| [CREATE TABLE orc-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-orc-target) | * [bool](/docs/sql-guide/data-types/data-type-bool)<br/>* [ID](/docs/sql-guide/data-types/data-type-id)<br/>* [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string) | * `IF NOT EXISTS`<br/>* `WITH COMMENT` | [BULK INSERT ORC data source](/docs/sql-guide/examples/sql-eg-insert-bulk/sql-eg-insert-bulk-orc)
| [CREATE TABLE parquet-target](/docs/sql-guide/examples/sql-eg-table-create/sql-eg-table-create-parquet-target) |  | [BULK INSERT parquet data source](/docs/sql-guide/examples/sql-eg-insert-bulk/sql-eg-insert-bulk-parquet) |
