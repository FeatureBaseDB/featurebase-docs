---
title: INSERT INTO cosvec-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to VECTOR column

INSERT data to string and vector columns in the `cosvec-target` table

## Before you begin
* [INSERT examples](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-home#insert-statements)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [CREATE TABLE cosvec-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-cosvec-target)

## INSERT statement

```sql
INSERT INTO cosvec-target (
  _id,
  description,
  dabed
)
  VALUES(
    {_id},
    '{tools_array[i]}',
     {dabed}
);

```

## Arguments

| Argument | Description |
|---|---|
| `INSERT INTO` | Insert data to the `cosvec-target` table `<column-list>` |

## Next step

* [SELECT FROM cosvec-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-cosvec-target)
