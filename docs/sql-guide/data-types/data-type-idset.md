---
title: IDSET
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 4
---

# IDSET data type

{% include /sql-guide/set-data-type-summary.md %}

The IDSET data type:
* has a `set` internal data type
* is used for:
  * grouping by
  * searching for discrete values

## Syntax

```
IDSET
```

## Arguments

| Argument | Description |
|---|---|
| IDSET | Data type used where there is a need to set multiple ID values for a single column |

## Additional information

{% include /sql-guide/set-datatype-csv-format.md %}

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table-create-types-all-eg.md %}
