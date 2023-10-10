---
title: CREATE TABLE csv-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# CREATE TABLE csv-target

Create a FeatureBase table with:
* a STRING unique identifier
* STRING and INT data types

## Before you begin

* [STRING data type](/docs/sql-guide/data-types/data-type-string)
* [INT data type](/docs/sql-guide/data-types/data-type-int)

## CREATE TABLE statement

```sql
CREATE TABLE csv-target (
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

* [BULK INSERT using a CSV formatted data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-csv-target)
