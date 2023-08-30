---
title: RANGEQ()
layout: default
parent: Functions
grand_parent: SQL guide
---

# RANGEQ() function

`RANGEQ()` is used on `IDSETQ` or `STRINGSETQ` data type columns to return values between unix-epoch timestamps.

## Before you begin
* [Learn about unix epoch/unix time](https://en.wikipedia.org/wiki/Unix_time){:target="_blank"}

## Syntax

```sql
RANGEQ(tq-colum,{ts-begin | null},{ts-end | null})
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `timequantum-col` | Any `idsetq` or `stringsetq` column that has an assigned `timequantum` unix-epoch timestamp | * [IDSETQ()](/docs/sql-guide/data-types/data-type-idsetq)<br/>* [STRINGSETQ()](/docs/sql-guide/data-types/data-type-stringsetq) |
| `ts-begin` | Unix-epoch timestamp which is the first value in a range from which to return results | [Null substitution](#null-substitution) |
| `ts-end` | Unix-epoch timestamp which is last value in range from which to return results. | [Null substitution](#null-substitution) |

## Additional information

{% include /sql-guide/timequantum-data-timestamp-summary.md %}

## `null` substitution

Substitute `null` if `ts-begin` or `ts-end` not known.

## Returns

| Data type | Value |
|---|---|
| `Timestamp` | Returns timestamps between ts-begin and ts-end inclusive |

## Examples

### Source table definition

```sql

CREATE TABLE segments (
    _id id,
    segment stringsetq timequantum 'YMDH'
);

insert into segments(_id,segment)
   VALUES (1, {1789864485,['green', 'yellow']}),
          (2, {1889763885,['green']}),
          (3, {1589763885, ['green', 'red']});
```

### SELECT with two RANGEQ() timestamps

```sql
SELECT _id, segment FROM segments WHERE RANGEQ(segment, 1889763885,2000000000);

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

## SELECT with one RANGEQ() timestamp

```sql
select _id, segment from segments where rangeq(segment, null ,2000000000)

+-----+---------------+
| _id | segment       |
+-----+---------------+
|   1 | GREEN,YELLOW  |
+-----+---------------+
|   2 | GREEN         |
+-----+---------------+
|   3 | RED           |
+-----+---------------+
```
