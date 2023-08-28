---
title: RANGEQ()
layout: default
parent: SQL functions
grand_parent: SQL guide
---

# RANGEQ() function

`RANGEQ()` is used on `IDSETQ` or `STRINGSETQ` data type columns to return values between two unix-epoch timestamps.

## Before you begin
* [Learn about unix epoch/unix time](https://en.wikipedia.org/wiki/Unix_time){:target="_blank"}

## Syntax

```sql
RANGEQ(tq-colum,timestamp-start,timestamp-stop)
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `timequantum-col` | Any `idsetq` or `stringsetq` column that has an assigned `timequantum` unix-epoch timestamp | * [IDSETQ()](/docs/sql-guide/data-types/data-type-idsetq)<br/>* [STRINGSETQ()](/docs/sql-guide/data-types/data-type-stringsetq) |
| `timestamp-start`<br/>`timestamp-stop` | Unix-epoch timestamps between which `RANGEQ()` function can return results. | [Timequantum timestamps and data](#timequantum-timestamps-and-data) |

## Additional information

{% include /sql-guide/timequantum-data-timestamp.md %}

## Returns

| Data type | Value |
|---|---|
| `Timestamp` |  Applies the difference between the 'start' and 'end' timestamps as a filter on the values of the 'time quantum' column. |

<!--Hey @Garrett! I wrote this based on the results in the example.

Returns values including `timestamp-start` and `timestamp-stop`

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
