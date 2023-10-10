---
title: INSERT examples
layout: default
parent: SQL examples
grand_parent: SQL guide
nav_order: 2
has_toc: false
---
# INSERT & BULK INSERT examples

These examples demonstrate the INSERT and BULK INSERT statements in relation to a target table, and different clauses.

## Before you begin

* [CREATE TABLE examples](/docs/sql-guide/sql-eg-table/sql-eg-table-home)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)

## INSERT statements

| Statement | Target table | clause | clause | clause |
|---|---|---|---|---|


## BULK INSERT statements

The following SQL examples demonstrate BULK INSERT using different clauses and data sources

| Statement | Target table | FROM clause | TRANSFORM clause | WITH clause |
|---|---|---|---|---|
| [BULK INSERT using CSV data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-csv) | [csv-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-csv-target) | URL |  | * `BATCHSIZE`<br/>* `FORMAT`<br/>* `INPUT`<br/>* `HEADER_ROW` |
| [BULK INSERT using ndJSON data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-ndjson) | [ndjson-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-ndjson-target) | CSV URL |  | |
| [BULK INSERT using ORC data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-orc-target) | [orc-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-orc-target) | URL |  |  |
| [BULK INSERT using Apache Parquet data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-parquet-target) | [parquet-target](docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-parquet-target) | URL |  |  |
