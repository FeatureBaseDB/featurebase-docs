---
title: CREATE TABLE all-datatypes
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# CREATE TABLE all-datatypes

The table `all-datatypes` is contains:
* an ID unique identifier
* columns for each supported data type

## Before you begin
* [CREATE TABLE examples](/docs/sql-guide/examples/sql-eg-home/#create-table-examples)
* [Featurebase data types](/docs/sql-guide/data-types/data-types-home)

## CREATE TABLE statement

```sql
CREATE TABLE IF NOT EXISTS all-datatypes (
    _id ID,
    boolcol BOOL,
    decimalcol DECIMAL(3),
    idcol ID,
    idsetcol IDSET,
    idsetqcol IDSETQ TIMEQUANTUM 'YMD' TTL '24h',
    intcol INT MIN 0 MAX 10000,
    stringcol STRING,
    stringsetcol STRINGSET,
    stringsetqcol STRINGSETQ TIMEQUANTUM 'YMD' TTL '24h',
    timestampcol TIMESTAMP TIMEUNIT 'ms',
    vectorcol VECTOR(5),
    varcharcol VARCHAR(21))
  WITH COMMENT 'Table contains all supported data types with valid constraints';
```

## Next step

* [INSERT INTO all-datatypes](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-all-datatypes)
