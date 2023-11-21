---
title: CREATE TABLE all-types
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# CREATE TABLE all-types

The table `all-types` is contains:
* an ID unique identifier
* columns for each supported data type

## Before you begin
* [CREATE TABLE examples](/docs/sql-guide/examples/sql-eg-home/#create-table-examples)
* [Featurebase data types](/docs/sql-guide/data-types/data-types-home)

## CREATE TABLE statement

```sql
CREATE TABLE IF NOT EXISTS all-types (
    _id id,
    intcol INT MIN 0 MAX 10000,
    boolcol BOOL,
    decimalcol DECIMAL(2),
    idcol ID,
    idsetcol IDSET,
    idsetcolq IDSETQ TIMEQUANTUM 'YMD' TTL '24h',
    stringcol STRING,
    stringsetcol STRINGSET,
    stringsetcolq STRINGSETQ TIMEQUANTUM 'YMD' TTL '24h',
    timestampcol TIMESTAMP timeunit 'ms',
    vectorcol VECTOR(768)
  )
  WITH COMMENT 'Table contains all supported data types';
```

## Next step

* [INSERT INTO all-types](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-all-types)
