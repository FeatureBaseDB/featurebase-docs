---
title: INSERT INTO all-types
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# INSERT data to all-types table

INSERT data to the all-types table

## Before you begin
* [INSERT examples](/docs/sql-guide/examples/sql-eg-home/#insert-examples)
* [INSERT statement](/docs/sql-guide/statements/statement-insert)
* [CREATE TABLE all-types](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-types)

## INSERT statement

```sql
INSERT INTO all-types (_id, intcol, boolcol, decimalcol, idcol, idsetcol, idsetcolq, stringcol, stringsetcol, stringsetcolq, timestampcol, vectorcol)
VALUES (
  001,
  1,
  true,
  10.10,
  01,
  [10, 20, 30],
  {'2023-11-21T00:00:00Z', [100, 200, 300]},
  'string-col',
  ['ten', 'twenty', 'thirty'],
  {'2023-11-21T00:00:00Z', ['one hundred', 'two hundred', 'three hundred']},
  '2023-11-21T00:00:00Z',
  [0.1,0.2,0.3,0.4,0.5]
);
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `INSERT INTO` | Insert data to the `all-cols` table `<column-list>` | [INSERT statement](/docs/sql-guide/statements/statement-insert)
| `[<value>,...]` | Required square brackets around array of values to insert into SET and SETQ columns, and vector column |  |
| `{<timestamp>,[<value>,...]}` | Required curly brackets to gather timestamped `[<set>]` values to insert into a SETQ column |
| `[<decimal-val>,...]` | Decimal value array to insert into Vector data type column. |

## Next step

* [SELECT FROM all-types](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-from-all-types)
