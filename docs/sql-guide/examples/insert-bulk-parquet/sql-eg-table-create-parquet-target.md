---
title: CREATE TABLE parquet-sample
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 1
---

# CREATE TABLE parquet-sample

Create a FeatureBase table with:
* ID, INT and DECIMAL data types
* a DECIMAL constraint of four places

## Before you begin

* [ID data type](/docs/sql-guide/data-types/data-type-id)
* [INT data type](/docs/sql-guide/data-types/data-type-int)
* [DECIMAL data type](/docs/sql-guide/data-types/data-type-decimal)

## CREATE TABLE statement

```sql
CREATE TABLE parquet-target (
    _id id,
    x int,
    y decimal(4)
);
```

## Next step

* [BULK INSERT using a PARQUET formatted data source](/docs/sql-guide/examples/insert-bulk-parquet/sql-eg-insert-bulk-parquet)
