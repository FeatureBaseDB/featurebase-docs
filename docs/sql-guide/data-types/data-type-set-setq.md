---
title: SET & SETQ
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 8
---

# `SET` and `SETQ` data types

{% include /sql-guide/datatype-set-setq-summary.md %}

## Syntax

```sql
{ID | STRING}{SET | {SETQ TIMEQUANTUM ['<date-unit>'] [TTL '<int-value><time-unit>']}}
```

## Arguments

| Argument | Description | Required? | Default | Additional information |
|---|---|---|---|---|
| `ID` | Values to be inserted conform to `ID` data type |  |  | [ID data type](/docs/sql-guide/data-types/data-type-id) |
| `STRING` | Values to be inserted conform to `STRING` data type |  |  | [STRING data type](/docs/sql-guide/data-types/data-type-string) |
| `SET` | Array of values inserted to table as a comma-separated list | Yes |  |
| `SETQ` | Array of `STRING` values identified by a Unix-epoch or ISO-8601 timestamp |  | [TIMESTAMP data type](/docs/sql-guide/data-types/data-type-timestamp) |
| `TIMEQUANTUM` | `SETQ` constraint that creates views on `SETQ` data for each `<date-unit>` | Y |  | [TIMEQUANTUM views](#timequantum-views)<br/>* [TIMEQUANTUM view deletion](#timequantum-view-deletion) |
| `<date-unit>` | One or more sequential, descending date units, defined as `Y`, `M`, `D`, `H` | Y |  | [TIMEQUANTUM views](#timequantum-views) |
| `TTL` | Governs automatic deletion of `TIMEQUANTUM` views | Optional | `0s` (disables `TTL`) | * [TTL time units](#ttl-time-unit)<br/>* [TIMEQUANTUM view deletion](#timequantum-view-deletion)|

## Additional information

### TIMEQUANTUM views

TIMEQUANTUM views are created and named for each `<date-unit>`

| Name | `<date-unit>` declaration | View timestamp |
|---|---|---|
| Year | `Y` | YYYY-01-01T00:00:00.000Z |
| Month | `M` | YYYY-MM-01T00:00:00.000Z |
| Day | `D` | YYYY-MM-DDT00:00:00.000Z |
| Hour | `H` | YYYY-MM-DDTHH:00:00.000Z |

### `TTL <time-unit>`

An integer and time unit are used to calculate the number of seconds before a `TIMEQUANTUM` vie can be deleted.

{: .note}
`TTL` defaults to `0s` which indicates no views will be deleted.

| Name | `<time-unit>` declaration |
|---|---|
| Hour | `h` |
| Minute | `m` |
{% include /sql-guide/timestamp-ttl-timeunit-table.md %}

### `TIMEQUANTUM` view deletion

FeatureBase converts timestamps and `TTL` to UNIX epoch (seconds since 1970-01-01). The resulting integer values are subtracted.

A `TIMEQUANTUM` view is deleted when:

```
<database-timestamp> - <view-timestamp> >= <ttl-value>
```

{: .note}
View deletion may take longer than expected because the database timestamp is governed by the vendor region.

### GROUP BY issues on SET and SETQ data types

* [GROUP BY issues for SET and SETQ data types](/docs/sql-guide/issues/select-groupby-flatten-set-setq)

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table-create-types-all-eg.md %}
