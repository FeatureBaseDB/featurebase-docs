---
title: SETQ
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 5
---

# SETQ data type

The `SETQ` data type is used to set multiple values and associate times for each value in a single column.

## DDL syntax

```
[ID | STRING]SETQ [TIMEQUANTUM {<time-unit>...} [TTL '{<int><time-unit>}']]
```

## Arguments

| Argument | Description | Internal data type | Default | Additional information |
|---|---|---|---|---|
| IDSETQ | Data type used where there is a need to set multiple ID values for a single column | `set` |  | [IDSETQ](#idsetq) |
| STRINGSETQ | Data type used to set multiple STRING values for a single column. | `keyed set` |  |  |
| TIMEQUANTUM | TIMEQUANTUM creates a view that associates times with column data. |  |  | [TIMEQUANTUM](#timequantum) |
| TTL | Used to reduce the growth of a data footprint by deleting older views after a stated time |  | `0s` | [TTL(time to live)](#ttl-time-to-live) |
| <time-unit> | Standard time units used by both TIMEQUANTUM and TTL |  |  | [Time Units](#time-units) |

## Additional information

`SETQ` data types:
* behave like a standard view unless the `TIMEQUANTUM` constraint is added.
* used to group by
* used to search for discrete values

### IDSETQ

* Use the INT data type to perform range queries using `<` or `>`

{% include /sql-guide/timequantum-additional.md %}

{% include /sql-guide/ttl-additional.md %}

{% include /sql-guide/time-units-timequantum-ttl.md %}

## Examples

### TIMEQUANTUM

Set TIMEQUANTUM to:
* `MD` for queries that include a range of months
* `D` for queries that include a small number of days

### TTL order of events

This example demonstrates the deletion dates of three column views where TTL is set to `30d`

| View date | ttl date of deletion | Explanation |
|---|---|---|
| 2022 | January 30, 2023 | Date assumed to be end of 2022 |
| 2022-09 | October 30, 2022 | Date assumed to be end of September |
| 2022-09-02 | October 2, 2022 | Deletion after 30 days as intended |

### TTL `error: unknown unit`

FeatureBase generates `error: unknown unit` if TTL is defined incorrectly. For example:

```
  TTL '60second'
```

### CREATE TABLE with all data types

{% include /sql-guide/table_create_eg_all_datatypes.md %}

## Further information

* [SET data type](/docs/sql-guide/data-types/data-type-set)
