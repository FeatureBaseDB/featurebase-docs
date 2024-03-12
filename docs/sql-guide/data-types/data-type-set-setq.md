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
{ID | STRING}{SET | SETQ <SETQ-constraints>}
```

## Arguments

| Argument | Description | Required? | Default | Additional information |
|---|---|---|---|---|
| `ID` | Values to be inserted conform to `ID` data type |  |  | [ID data type](/docs/sql-guide/data-types/data-type-id) |
| `STRING` | Values to be inserted conform to `STRING` data type |  |  | [STRING data type](/docs/sql-guide/data-types/data-type-string) |
| `SET` | Comma-separated array of values | Yes |  |
| `SETQ` | Comma-separated array of values identified by a Unix-epoch or ISO-8601 timestamp |  | [TIMESTAMP data type](/docs/sql-guide/data-types/data-type-timestamp) |

### `SETQ <constraints>`

```sql
TIMEQUANTUM '<date-unit>' [TTL '<int-value><time-unit>']
```

| Argument | Description | Required? | Default | Additional information |
|---|---|---|---|---|
| `TIMEQUANTUM` | Constraint that creates views on `SETQ` data for each `<date-unit>` | Y |  | [TIMEQUANTUM views](#timequantum-views)<br/>* [TIMEQUANTUM view deletion](#timequantum-view-deletion) |
| `<date-unit>` | One or more sequential, descending date units, defined as `Y`, `M`, `D`, `H` | Y |  | [TIMEQUANTUM views](#timequantum-views) |
| `TTL` | Governs automatic deletion of `TIMEQUANTUM` views | Optional | `0s` (disables `TTL`) | * [TTL time units](#ttl-time-unit)<br/>* [TIMEQUANTUM view deletion](#timequantum-view-deletion)|

## Additional information

### TIMEQUANTUM views

A TIMEQUANTUM view is created for each `<date-unit>` in a `CREATE TABLE` statement

| Name | `<date-unit>` declaration | View timestamp |
|---|---|---|
| Year | `Y` | YYYY-01-01T00:00:00.000Z |
| Month | `M` | YYYY-MM-01T00:00:00.000Z |
| Day | `D` | YYYY-MM-DDT00:00:00.000Z |
| Hour | `H` | YYYY-MM-DDTHH:00:00.000Z |

TIMEQUANTUM views:
* improve the responsiveness of Range queries where a query uses the same combination of date units
* increase storage overheads which may require the use of `TTL`(time-to-live)

### `TTL <time-unit>`

An integer and time unit are used to calculate the number of seconds before a `TIMEQUANTUM` view can be deleted.

{: .note}
`TTL '0s'` is the default and should be used where
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
View deletion may take longer than expected because:
* the database timestamp is governed by the vendor region
* views may contain large quantities of data

### Value definition

| Data type | Definition | Statement |
|---|---|---|
| SET | `[<value>,...]` | [INSERT](/docs/sql-guide/statements/statement-insert) <br/> [BULK INSERT...MAP](/docs/sql-guide/statements/statement-insert-bulk) |
| SETQ | `{<timestamp>,[<value>,...]}` | [INSERT](/docs/sql-guide/statements/statement-insert) |

{: .important}
>Values must be **semicolon-separated** for `CSV` data sources used with `BULK INSERT`
>e.g., `<previous-value>,<value>;...,<next-value>`

### GROUP BY issues on SET and SETQ data types

* [GROUP BY issues for SET and SETQ data types](/docs/sql-guide/issues/select-groupby-flatten-set-setq)

## Examples

{% include /sql-guide/table-create-types-all-eg.md %}

### INSERT statement

```sql
INSERT INTO all-datatypes (_id, idsetcol, idsetqcol, stringsetcol, stringsetqcol) VALUES

(1, [10,20,30],
{1709706283,[90,80,70]},
['ten', 'twenty', 'thirty'],
{'2024-03-06T06:24:43.261Z',['ninety','eighty','seventy']});

```
