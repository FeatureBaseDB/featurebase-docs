---
title: CREATE TABLE age
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 1
---

# CREATE TABLE age

This table is required for the BULK INSERT example using a CSV data source.

## Before you begin

* [STRING data type](/docs/sql-guide/data-types/data-type-string)
* [INT data type](/docs/sql-guide/data-types/data-type-int)

## CREATE TABLE statement

```sql
CREATE TABLE pii (
  _id string,
  name string,
  description string,
  gender string,
  country string,
  occupation string,
  birth_year int,
  death_year int,
  death_manner string,
  birth_age int
);
```

## Next step

* [Part 2 - BULK INSERT using a CSV formatted data source](/docs/sql-guide/examples/insert-bulk-csv/sql-eg-insert-bulk-csv)
