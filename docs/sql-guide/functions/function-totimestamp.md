---
title: TOTIMESTAMP()
layout: default
parent: SQL functions
grand_parent: SQL guide
---
# TOTIMESTAMP() function

The `TOTIMESTAMP()` function uses the Unix Epoch to calculate a date-time equivalent of a specified integer, then returns the results.

## Before you begin

* [Learn about unix epoch/unix time](https://en.wikipedia.org/wiki/Unix_time){:target="_blank"}
* [Learn about `timestamp` data type](/docs/sql-guide/data-types/data-type-timestamp)

## Syntax

```
TOTIMESTAMP({int_expr}, [timeunit])
```

## Arguments

| Argument | Data type | Description | Default | Required | Additional information |
|---|---|---|---|---|---|
| int_expr | `int` | Integer value specified as literal or expression to be converted to a timestamp |  | Yes |  |
| timeunit | `string` | String value that specifies the unit of time to convert. | `s` | Optional | [Time units](#timeunit-additional) |

## Returns

| Data type | Value |
|---|---|
| timestamp | Unix epoch equivalent of `int_expr`


it converts the input using unix epoch as base
and the optional `timeunit` to determine the granularity of the input value.
Returns timestamp equivalent of `int_expr`,
 |

## Additional information

### Timeunit additional

{% include /sql-guide/timestamp-timeunit-table.md %}

## Examples

### Convert granular integers to timestamp

`TOTIMESTAMP()` can be used to standardize differing time units on integer date-time values as they are inserted into a table.

#### Demo table

```sql
create table demo
    (_id id, ts timestamp timeunit 's');

insert into demo(_id, ts)
    values (1, TOTIMESTAMP(90061));
insert into demo(_id, ts)
    values (2, TOTIMESTAMP(90061, 's'));
insert into demo(_id, ts)
    values (3, TOTIMESTAMP(90061000,'ms'));
insert into demo(_id, ts)
    values (4, TOTIMESTAMP(90061000000,'us'));
insert into demo(_id, ts)
    values (5, TOTIMESTAMP(90061000000000,'ns'));
```

#### SQL query

```sql
select _id, ts from demo;
```

#### Result

```
| _id |           ts                  |
|-----|-------------------------------|
| 1   | 1970-01-02 01:01:01 +0000 UTC |
| 2   | 1970-01-02 01:01:01 +0000 UTC |
| 3   | 1970-01-02 01:01:01 +0000 UTC |
| 4   | 1970-01-02 01:01:01 +0000 UTC |
| 5   | 1970-01-02 01:01:01 +0000 UTC |
```

### Use TOTIMESTAMP() in a SELECT query

TOTIMESTAMP() is a scalar function, so it can be used in the SELECT list and in parts of the query where expressions are allowed.

#### Demo table

```sql
create table demo
    (_id id, int_ts int);

insert into demo(_id, int_ts)
    values (1, 86400);
insert into demo(_id, int_ts)
    values (2, 86400);
insert into demo(_id, int_ts)
    values (3, 86400000);
```

#### SELECT with TOTIMESTAMP ()

```sql
select _id, int_ts, TOTIMESTAMP(int_ts, 's') as ts
from demo;
```

#### Results

```
| _id |  int_ts  |             ts                |
|-----|----------|-------------------------------|
|  1  | 86400    | 1970-01-02 00:00:00 +0000 UTC |
|  2  | 86400    | 1970-01-02 00:00:00 +0000 UTC |
|  3  | 86400000 | 1972-09-27 00:00:00 +0000 UTC |
```


```sql
select _id, int_ts, TOTIMESTAMP(int_ts, 's') as ts
from demo
where TOTIMESTAMP(int_ts, 's')>'1970-01-02T00:00:00Z';
```

Result:

```
| _id |  int_ts |              ts               |
|----|----------|-------------------------------|
| 3  | 86400000 | 1972-09-27 00:00:00 +0000 UTC |
```
