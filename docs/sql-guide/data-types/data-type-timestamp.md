---
title: TIMESTAMP
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 8
---

# TIMESTAMP data type

Timestamp is a date-time data type used with `timeunit` constraint. Timestamp columns store date-time as integer value representing number of timeunits elapsed since [Unix epoch](https://www.unixtutorial.org/unix-epoch/)

## DDL Syntax

```
TIMESTAMP [TIMEUNIT {value}]
```

## Arguments

| Argument | Description | Further information |
|---|---|---|
| TIMESTAMP | Time and date data type used for time series analysis | [Time stamp](https://en.wikipedia.org/wiki/Timestamp) |
| TIMEUNIT | The time unit in which to store a timestamp that defaults to second `s | See [TIMEUNIT values](#timeunit-value) |

## Additional information

### TIMEUNIT value

| Unit | Declaration |
|---|---|
| seconds (default) | `s` |
| milliseconds | `ms` |
| microseconds | `us` |
| nanoseconds | `ns` |

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table_create_eg_all_datatypes.md %}
