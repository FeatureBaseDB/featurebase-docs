---
title: CREATE TABLE tuple csv
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 2
---

## CREATE TABLE for BULK INSERT using tuple

The `tuple-set-target` table is intended for a `BULK INSERT` statement and includes:
* a STRING unique identifier
* TIMESTAMP, IDSET, STRINGSET, IDSETQ and STRINGSETQ column data types

## Before you begin
* [CREATE TABLE examples](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-home#create-table-examples)
* [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
* [IDSET data type](/docs/sql-guide/data-types/data-type-idset)
* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)
* [STRING](/docs/sql-guide/data-types/data-type-string)
* [STRINGSET data type](/docs/sql-guide/data-types/data-type-stringset)
* [STRINGSETQ data type](/docs/sql-guide/data-types/data-type-stringsetq)
* [TIMESTAMP data type](/docs/sql-guide/data-types/data-type-timestamp)

## CREATE TABLE

```sql
CREATE TABLE tuple-set-target (
  _id string,
  time_col TIMESTAMP,
  stringset_col STRINGSET,
  ideset_col IDSET,
);
```

## Next step

* [BULK INSERT INTO tuple-set-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-tuple-set-target)
