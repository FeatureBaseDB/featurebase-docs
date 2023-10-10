---
title: CREATE TABLE tuple csv
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 2
---

## CREATE TABLE for BULK INSERT using tuple

The following CREATE TABLE statement includes FeatureBase `SET` data types which permit an `INSERT` of low cardinality data to single table rows.

This table definition is required for a BULK INSERT example using the TUPLE function.

## Before you begin

* [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
* [IDSET data type](/docs/sql-guide/data-types/data-type-idset)
* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)
* [STRINGSET data type](/docs/sql-guide/data-types/data-type-stringset)
* [STRINGSETQ data type](/docs/sql-guide/data-types/data-type-stringsetq)

## CREATE TABLE

```sql
CREATE TABLE tuple-set-target (
  _id string,
  time_col TIMESTAMP,
  stringset_col STRINGSET,
  ideset_col IDSET,
  stringsetq_col STRINGSETQ,
  idesetq_col IDSETQ
);
```

## Next step

* [BULK INSERT CSV formatted data using the TUPLE function](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-tuple-set-target)
