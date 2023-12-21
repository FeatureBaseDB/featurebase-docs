---
title: INT
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 6
---

# INT data type

Use `INT` for data that spans a large range of values that is intended for aggregate queries.

{: .note}
Use `ID` data type if you intend to run queries with `GROUP BY` constraint or with low-cardinality data.

## Syntax

```
INT [MIN {value}] [MAX {value}]
```

## Arguments

| Argument | Description | Default | Required |
|---|---|---|---|
| INT | Accepts numerical values between -2^63 and 2^63-1 by default |  | Yes |
| MIN | Minimum value constraint | -2^63 | No |
| MAX | Maximum value constraint | 2^63 -1 | No |

## Examples

{% include /sql-guide/sql-eg-all-datatypes-list.md %}
