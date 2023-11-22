---
title: STRINGSET
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 8
---

# STRINGSET data type

{% include /sql-guide/set-data-type-summary.md %}

The STRINGSET data type:
* has a `keyed set` internal datatype
* is used for:
  * grouping by
  * searching for discrete values

## Syntax

```
STRINGSET
```

## Arguments

| Argument | Description |
|---|---|
| STRINGSET | Data type used to set multiple STRING values for a single column. |

## Additional information

{% include /sql-guide/set-datatype-csv-format.md %}

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table-create-types-all-eg.md %}
