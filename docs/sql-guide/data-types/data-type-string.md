---
title: STRING
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 7
---

# STRING data type

`STRING` is recommended for low-cardinality data for queries on discrete values and using `GROUP BY`.

{: .warning}
High-cardinality data inserted to `STRING` will lead to increased performance issues and storage overheads.

## Syntax

```
STRING
```

## Arguments

| Argument | Description |
|---|---|
| STRING | Used for STRING, CHAR and VARCHAR data. |

## Additional information

* `STRING` has a `keyed mutex` internal data type

### Constraining string values

Single quotation marks are used for string values in the following statements:
* [INSERT/REPLACE](/docs/sql-guide/statements/statement-insert)
* [SELECT](/docs/sql-guide/statements/statement-select)

## Examples

{% include /sql-guide/sql-eg-all-datatypes-list.md %}
