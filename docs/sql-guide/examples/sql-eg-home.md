---
title: SQL Examples
layout: default
has_children: true
parent: SQL guide
nav_order: 20
has_toc: false
---
# FeatureBase SQL Examples

End-to-end SQL examples.

## CREATE TABLE statements

The following SQL examples demonstrate table creation with different data types, constraints and options

| Statement | Data types | Table options |
|---|---|---|
| [CREATE TABLE csv-target](/docs/sql-guide/examples/insert-bulk-csv/sql-eg-table-create-csv-target) | [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string)|  |
| [CREATE TABLE orc-target](/docs/sql-guide/examples/insert-bulk-orc/sql-eg-table-create-sampleorc) | * [bool](/docs/sql-guide/data-types/data-type-bool)<br/>* [ID](/docs/sql-guide/data-types/data-type-id)<br/>* [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string) | * `IF NOT EXISTS`<br/>* `WITH COMMENT` |
| [CREATE TABLE parquet-target](/docs/sql-guide/examples/insert-bulk-parquet/sql-eg-table-create-parquet-target) |  |  |

## INSERT statements


## BULK INSERT statements

| Statement | MAP clause | TRANSFORM clause | Data source | x | y |
|---|---|---|---|---|---|---|
| [BULK INSERT ]

## VIEW statements



##


-->

## BULK INSERT statements

* [BULK INSERT using CSV data source](/docs/sql-guide/examples/insert-bulk-csv/sql-eg-insert-bulk-csv)
* [BULK INSERT using ndJSON data source](/docs/sql-guide/examples/insert-bulk-ndjson/sql-eg-insert-bulk-ndjson)
* [BULK INSERT using ORC data source](/docs/sql-guide/examples/insert-bulk-orc/statement-insert-bulk-orc-example)
* [BULK INSERT using Apache Parquet data source](/docs/sql-guide/examples/insert-bulk-parquet/sql-eg-insert-bulk-parquet)
