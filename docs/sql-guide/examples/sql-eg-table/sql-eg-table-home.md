---
title: TABLE examples
layout: default
parent: SQL examples
grand_parent: SQL guide
nav_order: 1
has_toc: false
---

# TABLE examples

The following SQL examples demonstrate CREATE TABLE and ALTER TABLE statements using different data types, constraints and options.

## Before you begin

* [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
* [ALTER TABLE statement](/docs/sql-guide/statements/statement-table-alter)
* [FeatureBase data types](/docs/sql-guide/data-types/data-types-home)

## CREATE TABLE examples

| Statement | Data types | Table options | Relates to |
|---|---|---|---|
| [CREATE TABLE csv-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-csv-target) | * [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string) |  | [BULK INSERT CSV data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-csv-target) |
| [CREATE TABLE ndjson-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-ndjson-target) | * [BOOL](/docs/sql-guide/data-types/data-type-bool)<br/>* [ID](/docs/sql-guide/data-types/data-type-id)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string)<br/>* [TIMESTAMP](/docs/sql-guide/data-types/data-type-timestamp) | * `IF NOT EXISTS`<br/>* `WITH COMMENT` | [BULK INSERT NDJSON data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-ndjson-target) |
| [CREATE TABLE orc-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-orc-target) | * [BOOL](/docs/sql-guide/data-types/data-type-bool)<br/>* [ID](/docs/sql-guide/data-types/data-type-id)<br/>* [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string) | * `IF NOT EXISTS`<br/>* `WITH COMMENT` | [BULK INSERT ORC data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-orc-target)
| [CREATE TABLE parquet-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-parquet-target) | * [ID](/docs/sql-guide/data-types/data-type-id)<br/>* [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [DECIMAL](/docs/sql-guide/data-types/data-type-decimal) |  | [BULK INSERT parquet data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-parquet-target) |
| [CREATE TABLE tuple-set-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-tuple-set-target) | * [IDSET data type](/docs/sql-guide/data-types/data-type-idset)<br/>* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)<br/>* [INT](/docs/sql-guide/data-types/data-type-int)<br/>* [STRING](/docs/sql-guide/data-types/data-type-string)<br/>* [STRINGSET data type](/docs/sql-guide/data-types/data-type-stringset)<br/>* [STRINGSETQ data type](/docs/sql-guide/data-types/data-type-stringsetq) |  | [BULK INSERT tuple-set-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-tuple-set-target) |

## ALTER TABLE examples

| Statement | Data types | Table options | Relates to |
|---|---|---|---|
| ALTER TABLE |  |  |  |

<!-- Data type list for copying into tables

* [BOOL](/docs/sql-guide/data-types/data-type-bool)<br/>
* [DECIMAL](/docs/sql-guide/data-types/data-type-decimal)
* [ID](/docs/sql-guide/data-types/data-type-id)
* [IDSET data type](/docs/sql-guide/data-types/data-type-idset)
* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)
* [INT](/docs/sql-guide/data-types/data-type-int)
* [STRING](/docs/sql-guide/data-types/data-type-string)
* [STRINGSET](/docs/sql-guide/data-types/data-type-stringset)
* [STRINGSETQ](/docs/sql-guide/data-types/data-type-stringsetq)
* [TIMESTAMP](/docs/sql-guide/data-types/data-type-timestamp)
* [VECTOR](/docs/sql-guide/data-types/data-type-vector)

-->
