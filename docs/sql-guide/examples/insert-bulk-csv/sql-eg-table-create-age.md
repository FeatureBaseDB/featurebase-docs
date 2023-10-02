---
title: CREATE TABLE age
layout: default
parent: SQL Examples
grand_parent: SQL guide
---

# CREATE TABLE age

This table is required for the BULK INSERT example using a CSV data source.

## Before you begin

* [STRING data type](/docs/sql-guide/data-types/data-type-string)
* [INT data type](/docs/sql-guide/data-types/data-type-int)

## CREATE TABLE statement

```sql
CREATE TABLE age (
    _id STRING,
    name STRING,
    description STRING,
    gender STRING,
    country STRING,
    occupation STRING,
    birth_year INT min -32767 max 32767,
    death_year INT min -32767 max 32767,
    death_manner STRING,
    birth_age INT min -32767 max 32767
);
```

## Next step

* [BULK INSERT using a CSV formatted data source](/docs/sql-guide/examples/insert-bulk-csv/sql-eg-insert-bulk-csv)
