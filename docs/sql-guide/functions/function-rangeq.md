---
title: RANGEQ()
layout: default
parent: SQL functions
grand_parent: SQL guide
---

# RANGEQ() function

`RANGEQ()` is used on `IDSETQ` or `STRINGSETQ` data type columns to return values between two unix-epoch timestamps.

## Syntax

```sql
RANGEQ(timequantum-col,timestamp-start,timestamp-end)
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `timequantum-col` | The

Any `idsetq` or `stringsetq` column that has an assigned `timequantum` unix-epoch timestamp | * [IDSETQ()](/docs/sql-guide/data-types/data-type-idsetq)<br/>* [STRINGSETQ()](/docs/sql-guide/data-types/data-type-stringsetq) |
| `timestamp-start`<br/>`timestamp-end` | Timequantum timestamps between which `RANGEQ()` function can return results. | [Timequantum timestamps and data](#timequantum-timestamps-and-data) |

## Additional information

{% include /sql-guide/timequantum-data-timestamp.md %}

## Returns

| Data type | Value |
|---|---|
| `Timestamp` |  Applies the difference between the 'start' and 'end' timestamps as a filter on the values of the 'time quantum' column. |

<!--asking Garrett if this is more accurate on slack
Returns values associated with timestamps between and including `timestamp-start` and `timestamp-end`.
-->
## Examples

```sql

CREATE TABLE segments (
    _id id,
    segment stringsetq timequantum 'YMDH'
);

insert into segments(_id,segment)
   VALUES (1, {1789864485,['green', 'yellow']}),
          (2, {1889763885,['green']}),
          (3, {1589763885, ['green', 'red']});


select _id, segment from segments where rangeq(segment, 1889763885,2000000000);
+-----+---------------+
| _id | segment       |
+-----+---------------+
|   1 | NULL          |
+-----+---------------+
|   2 | GREEN         |
+-----+---------------+
|   3 | NULL          |
+-----+---------------+
```
