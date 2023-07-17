---
title: flatten()
layout: default
parent: SELECT hints
grand_parent: SQL guide
---

# SELECT...flatten() hint

The `SELECT...flatten()` function applies **exclusively** to `set` and `setq` data types.

## Before you begin

* [SQL SELECT statement](/docs/sql-guide/statements/statement-select)
* [SET and SETQ data types](/docs/sql-guide/data-types/data-types-home/#low-cardinality-data-types)

#### Syntax

```sql

[DISTINCT(flatten([SET_col|SETQ_col]))]


WITH (flatten([SET_col|SETQ_col]))
group by [SET_col|SETQ_col];

```

#### flatten() arguments

| Argument | Data types | Description | Required? | Additional information |
|---|---|---|---|---|
| `column_name` | `SET` and `SETQ` | Column with low cardinality data type | Yes | Column additional |

[IDSET](/docs/sql-guide/data-types/data-type-idset) and [STRINGSET](/docs/sql-guide/data-types/data-type-stringset) columns | Yes | This should only be used with `GROUP BY` queries |

## Additional information

| Query type | Flatten syntax | Examples |
|---|---|---|
|

| Hint | Description | Required | Additional information |
|---|---|---|---|
| `flatten()` | Used to return `DISTINCT` or `GROUP BY` results on `SET` and `SETQ` data type columns | `SELECT...WITH...GROUP BY`<br/>SELECT DISTINCT(flatten([SET_col|SETQ_col])) |

#### Returns

| Data type | Value |
|---|---|
| `ID`/`STRING` | individual values of passed column |

## Examples

{% include /sql-guide/table-create-segments-eg.md %}

### DISTINCT...flatten

```sql
SELECT DISTINCT(flatten(segment))
```



### GROUP BY with flatten()

This query counts individual values from the `segments` table

```sql
select count(*) as cnt, segment from segments
WITH (flatten(segment))
group by segment;

 cnt | segment
-----+-----------
   2 | ['RED']
   2 | ['BLUE']
   3 | ['GREEN']
```

{: .note}
This query can also be [performed as a SELECT...GROUP BY statement](/docs/sql-guide/statements/statement-select#group-by-with-stringset)
