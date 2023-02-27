---
title: TOTIMESTAMP()
layout: default
parent: SQL functions
grand_parent: SQL guide
---

# TOTIMESTAMP() function

The `TOTIMESTAMP()` function converts the given integer value to a timestamp and returns it. It uses the [unix epoch](https://www.unixtutorial.org/unix-epoch/) as the base and calculates date-time equivalent of the integer.

## Syntax

```
TOTIMESTAMP(int_exp, timeunit)
```

## Arguments


| Argument | Description | Data type |
|---|---|---|
| `int_exp` | Required `int` value or expression to be converted to a `timestamp`. | `int` |
| `timeunit` | Optional `string` value specifying the granularity of the input `int_exp`, defaults to `s`. see [TIMEUNIT values](#timeunit-value).| `string` |


## Returns

| Data type | Value |
|---|---|
| `timestamp` | Returns timestamp equivalent of `int_exp`, it converts the input using unix epoch as base and the optional `timeunit` to determine the granularity of the input value. |

## Remarks
If `timeunit` is not supplied, the granularity of the input will default to seconds.

### TIMEUNIT value

| Unit | Declaration |
|---|---|
| seconds (default) | `s` |
| milliseconds | `ms` |
| microseconds | `us` |
| nanoseconds | `ns` |

## Examples

### Integer value as input to timestamp column. 
Literal integers supplied as input to timestamp columns are implicitly converted to timestamp, implicit conversion of integer to timestamp will treat the integer value as seconds since unix epoch. For integer date-time values defined at granularity other than seconds TOTIMESTAMP() can be used to convert them to timestamp by selecting appropriate `timeunit` parameter that matches the granularity of the input. 

```sql
create table demo
    (_id id, ts timestamp timeunit 's');

insert into demo(_id, ts)
    values (1, 0);
insert into demo(_id, ts)
    values (2, 90061);
insert into demo(_id, ts)
    values (3, TOTIMESTAMP(90061, 's'));
insert into demo(_id, ts)
    values (4, TOTIMESTAMP(90061000,'ms'));    
insert into demo(_id, ts)
    values (5, TOTIMESTAMP(90061000000,'us'));   
insert into demo(_id, ts)
    values (6, TOTIMESTAMP(90061000000000,'ns'));   

select _id, ts from demo;

 _id | ts                            
-----+-------------------------------
   1 | 1970-01-01 00:00:00 +0000 UTC 
   2 | 1970-01-02 01:01:01 +0000 UTC 
   3 | 1970-01-02 01:01:01 +0000 UTC 
   4 | 1970-01-02 01:01:01 +0000 UTC 
   5 | 1970-01-02 01:01:01 +0000 UTC 
   6 | 1970-01-02 01:01:01 +0000 UTC 
```

