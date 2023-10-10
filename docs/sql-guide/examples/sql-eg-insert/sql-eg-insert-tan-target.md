---
title: INSERT INTO tan-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to tan-target

INSERT data to string and vector columns in the `cosvec-target` table

## Before you begin
* [INSERT examples](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-home#insert-statements)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [CREATE TABLE tan-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-tan-target)

## INSERT statement

```sql
INSERT INTO tan-target (
  _id,
  stuff)
  VALUES
    (identifier('tan-target'), ['cookies', 'milk']),
    (identifier('tan-target'), ['cup', 'plate']);
```

## Arguments

| Argument | Description |
|---|---|
| `INSERT INTO` | Insert an array of string values to the `stuff` stringset column, identified by a single  |


## Next step

* [Run SELECT queries on cosvec-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-cosvec-target)
