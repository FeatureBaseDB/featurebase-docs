---
title: IDSETQ
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 5
---

# IDSETQ data type

{% include /sql-guide/set-data-type-summary.md %}

{% include /sql-guide/setq-data-type-summary.md %}

The IDSETQ data type:
* has a `set` internal data type
* one standard view by default unless a timeQuantum is set.
* is used for:
  * grouping by
  * searching for discrete values


## Syntax

```
IDSETQ [TIMEQUANTUM {value} [TTL '{value}']]
```

## Arguments

| Argument | Description |
|---|---|
| IDSETQ | Data type used where there is a need to set multiple ID values for a single column |
{% include /sql-guide/timequantum-ttl-args.md %}

## Additional information

{% include /sql-guide/setq-query-range.md %}

{% include /sql-guide/function-tuple-setq.md %}

{% include /sql-guide/timequantum-additional.md %}

{% include /sql-guide/timequantum-timestamp-summary.md %}

{% include /sql-guide/ttl-additional.md %}

{% include /sql-guide/insert-bulk-map-trans-setq.md %}

### `TIMEQUANTUM` values and `TUPLE()` function

When the `TUPLE()` function is used in `SELECT` and `BULK INSERT` statements, the following values are returned:

{% include /sql-guide/setq-tuple-returns.md %}

## Examples

### CREATE TABLE with SETQ Timequantum

{% include /sql-guide/table-create-timequantum-eg.md %}

### CREATE TABLE with all data types

{% include /sql-guide/table-create-types-all-eg.md %}
