---
title: DECIMAL
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 2
---

# DECIMAL data type

DECIMAL is used for numeric data with a fixed number of decimal places and used for `GROUP BY` or searching for specific values.

## Syntax

```
DECIMAL[({SCALE <value>})]
```

## Arguments

| Argument | Description | Default | Required | Additional information |
|---|---|---|---|---|
| DECIMAL | Used for numeric data where the number of digits after the decimal point (SCALE) are already known. |  |  |
| SCALE | Number of digits of precision after decimal point which  | 2 | Optional | Values inserted are truncated to the SCALE |

## Additional information

* Source values should be rounded prior to import
* Source STRING values are parsed as floats where possible

## Examples

{% include /sql-guide/sql-eg-all-datatypes-list.md %}
