---
title: IDSETQ
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 5
---

# IDSETQ data type

IDSETQ is a FeatureBase datatype used to set multiple ID values and associate times for each value in a single column.

## DDL syntax

```
IDSETQ [TIMEQUANTUM {value} [TTL '{value}']]
```

## Arguments

| Argument | Description |
|---|---|
| IDSETQ | Data type used where there is a need to set multiple ID values for a single column |
{% include /sql-guide/timequantum-ttl-args.md %}

## Additional information

The IDSETQ data type:
* has a `set` internal data type
* one standard view by default unless a timeQuantum is set.
* is used for:
  * grouping by
  * searching for discrete values

{: .note}
Use the INT data type to perform range queries using `<` or `>`

{% include /sql-guide/timequantum-additional.md %}

{% include /sql-guide/ttl-additional.md %}

## Update Behavior

{% include /sql-guide/set_updates.md %}

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table_create_eg_all_datatypes.md %}
