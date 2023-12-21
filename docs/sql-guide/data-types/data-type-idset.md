---
title: IDSET
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 4
---

# IDSET data type

{% include /sql-guide/set-data-type-summary.md %}

The IDSET data type is used for searching for discrete values and `GROUP BY` queries

## Syntax

```
IDSET
```

## Arguments

| Argument | Description |
|---|---|
| IDSET | IDSET stores an array of comma-separated-values in a single row |

## Additional information

* `IDSET` has a `set` internal data type

{% include /sql-guide/set-datatype-csv-format.md %}

## Examples

{% include /sql-guide/sql-eg-all-datatypes-list.md %}
