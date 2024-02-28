---
title: High cardinality data types
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 8
---

# Datatypes for high cardinality data

{% include /sql-guide/datatype-set-setq-summary.md %}

## Syntax

```sql
{ID | STRING}{SET}[Q {TIMEQUANTUM ['<tq-unit>']} [TTL '<int-value><ttl-unit>']]
```

## Arguments

| Argument | Description | Required? | Default | Additional information |
|---|---|---|---|---|
| `ID` | Values to be inserted conform to `ID` data type |  |  | [ID data type](/docs/sql-guide/data-types/data-type-id) |
| `STRING` | Values to be inserted conform to `STRING` data type |  |  | [STRING data type](/docs/sql-guide/data-types/data-type-string) |
| `SET` | Array of values inserted to table as a comma-separated list | Yes |  |
| `SETQ` | Array of `STRING` values identified by a valid timestamp |  | [TIMESTAMP data type](/docs/sql-guide/data-types/data-type-timestamp) |
| `TIMEQUANTUM <tq-unit>` | One or more time-units in a decending sequence with no omissions | Optional |  | [Timequantum additional](#timequantum-additional) |
| `TTL '<int-value><ttl-unit>'` | Governs automatic deletion of timestamp and values from SETQ column | Optional | `0s` (disables `TTL`) | * [TTL additional](#ttl-additional)<br/>* [TTL automatic deletion rules](#ttl-automatic-deletion-rules)|

## Additional information

### TIMEQUANTUM additional

TIMEQUANTUM creates a view on the data that is used to improve range query responsiveness.

`TIMEQUANTUM <tq-unit>` governs the how the timestamp value is truncated for the TIMEQUANTUM view, and has a direct effect on `TTL`.

| Unit | Declaration |
|---|---|
| Year | `Y` |
| Month | `M` |
| Day | `D` |
| Hour | `H` |

* [TTL deletion examples](#ttl-deletion-examples)

### TTL additional

{% include /sql-guide/timestamp-ttl-timeunit-table.md %}

## TTL automatic deletion rules

| Rule | Additional information |
|---|---|
| Runs hourly from FeatureBase server startup |  |
| Deletion occurs based on `[<tq-unit> + <ttl-unit>]` | [TTL deletion examples](#ttl-deletion-examples) |
| Data cannot be recovered once deleted | Set `TTL '0s'` to prevent deletion of historical data |

### GROUP BY issues on SET and SETQ data types

* [GROUP BY issues for SET and SETQ data types](/docs/sql-guide/issues/select-groupby-flatten-set-setq)

## Examples

### TTL deletion examples

| Timestamp value | TIMEQUANTUM | View timestamp | TTL | Deletion date |
|---|---|---|---|---|
| '2024-02-28T08:04:13.867Z'  | `TIMEQUANTUM 'Y'` |  | `TTL 30s` |  |
| '2024-02-28T08:04:13.867Z'  | `TIMEQUANTUM 'YM'` |  | `TTL 30s` |  |
| '2024-02-28T08:04:13.867Z'  | `TIMEQUANTUM 'YMD'` |  | `TTL 30s` |  |
| '2024-02-28T08:04:13.867Z'  | `TIMEQUANTUM 'YMDH'` |  | `TTL 30s` |  |

### CREATE TABLE with all data types

{% include /sql-guide/table-create-types-all-eg.md %}
