---
title: FLATTEN()
layout: default
parent: SELECT hints
grand_parent: SQL guide
---

# FLATTEN() hint

The FLATTEN() hint is used to return distinct or group on individual members of IDSET and STRINGSET columns. It can be used for:
* SELECT...WITH...GROUP BY queries
* SELECT DISTINCT... queries
* queries with one input argument that matches the sole DISTINCT/GROUP BY column

## Before you begin

* [SQL SELECT statement](/docs/sql-guide/statements/statement-select)
* [SET and SETQ data types](/docs/sql-guide/data-types/data-types-home/#low-cardinality-data-types)

## Syntax

```sql

SELECT
  [
    DISTINCT
      (FLATTEN
        ([SET_col | SETQ_col])
      )
  ]
  ...
  [
    WITH
      FLATTEN
        ([SET_col|SETQ_col])
    GROUP BY [SET_col|SETQ_col]
  ]
```

## Arguments

| Argument | Data types | Description | Required? | Additional information |
|---|---|---|---|---|
| `column_name` | `SET` and `SETQ` | Column with low cardinality data type | Yes | Column additional |


| [IDSET](/docs/sql-guide/data-types/data-type-idset) and [STRINGSET](/docs/sql-guide/data-types/data-type-stringset) columns | Yes | This should only be used with `GROUP BY` queries |

## Additional information

| Query type | Flatten syntax | Examples |
|---|---|---|
|

| Hint | Description | Required | Additional information |
|---|---|---|---|
| `flatten()` | Used to return `DISTINCT` or `GROUP BY` results on `SET` and `SETQ` data type columns | `SELECT...WITH...GROUP BY`<br/>SELECT DISTINCT(flatten([SET_col|SETQ_col])) |

#### Returns

Individual values are returned from the specified column based on the source data type

| Source column type | Returned data type |
|---|---|
| IDSET/IDSETQ| ID (unsigned integer) |
| STRINGSET/STRINGSETQ | String |

## Examples

{% include /sql-guide/table-create-segments-eg.md %}

### DISTINCT...flatten

```sql
SELECT DISTINCT(flatten(segment))
```

### GROUP BY with flatten()

{: .note}
This query can also be [performed as a SELECT...GROUP BY statement](/docs/sql-guide/statements/statement-select#group-by-with-stringset)

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
