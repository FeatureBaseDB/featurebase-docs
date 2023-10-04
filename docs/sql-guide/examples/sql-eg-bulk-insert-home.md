---
title: BULK INSERT examples
layout: default
parent: SQL guide
has_toc: false
---
# BULK INSERT examples

INSERT data from a remote data source to a FeatureBase table

## Before you begin

* [CREATE TABLE examples](/docs/sql-guide/sql-eg-table-create-home)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)

## BULK INSERT statements

The following SQL examples demonstrate BULK INSERT using different clauses and data sources

| Statement | Target table | FROM clause | TRANSFORM clause | WITH clause |
|---|---|---|---|---|
| [BULK INSERT using CSV data source](/docs/sql-guide/examples/insert-bulk-csv/sql-eg-insert-bulk-csv) | [csv-target](/docs/sql-guide/examples/insert-bulk-csv-target/sql-eg-table-create-csv-target) | URL |  |  |
| [BULK INSERT using ndJSON data source](/docs/sql-guide/examples/insert-bulk-ndjson/sql-eg-insert-bulk-ndjson) | [ndjson-target](/docs/sql-guide/examples/insert-bulk-ndjson-target/sql-eg-table-create-ndjson-target) | CSV URL |  | |
| [BULK INSERT using ORC data source](/docs/sql-guide/examples/insert-bulk-orc/statement-insert-bulk-orc-example) | [orc-target](/docs/sql-guide/examples/insert-bulk-orc-target/sql-eg-table-create-orc-target) | URL |  |  |
| [BULK INSERT using Apache Parquet data source](/docs/sql-guide/examples/insert-bulk-parquet-target/sql-eg-table-create-parquet-target) | [parquet-target]() | URL |  |  |
