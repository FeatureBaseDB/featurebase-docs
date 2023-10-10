---
title: INSERT INTO cosvec-table
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to VECTOR column

INSERT data to string and vector columns in the `cosvec-target` table

{: .warning}
The CSV file is 147MB and may take some time to download.

## Before you begin
* [BULK INSERT examples](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-home#bulk-insert-statements)
* [Learn about the Comma separated value (CSV) format](https://www.rfc-editor.org/rfc/rfc4180){:target="_blank"}
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
* [CREATE TABLE cosvec-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-cosvec-target)

## INSERT statement

```sql
INSERT INTO cosvec-target
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

* [Run SELECT queries on cosvec-target](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-cosvec-target)
