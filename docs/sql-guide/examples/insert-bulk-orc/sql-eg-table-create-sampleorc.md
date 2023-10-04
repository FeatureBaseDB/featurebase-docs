---
title: CREATE TABLE orcsample
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 1
---

# CREATE TABLE orcsample

This table demonstrates:
* ID, INT and BOOL numeric data types
* STRING data type
* `IF NOT EXISTS` table option

This table is required for the BULK INSERT statement using an orc data type.

## Before you begin

* DATA TYPE LINKS

## CREATE TABLE statement

```sql
CREATE TABLE
  IF NOT EXISTS
  sampleorc (
    _id ID,
    a STRING,
    b BOOL,
    c INT
)
WITH COMMENT 'destination table for APACHE orc data source'
;
```

## Next step

* [BULK INSERT using an ORC data source](/docs/sql-guide/examples/insert-bulk-orc/sql-eg-insert-bulk-orc)
