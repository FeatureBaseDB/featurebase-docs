---
title: ASCII()
layout: default
parent: Functions
grand_parent: SQL guide
---

# ASCII() function

`Ascii()` returns the ASCII value of the specified string, using the UTF-8 ASCII table.

## Syntax

```
ascii(expr)
```

## Arguments

| Argument | Description | Length |
|---|---|---|---|
| `expr` | Any `string` expression. | 1 |

## Returns

| Data type | Value |
|---|---|
| `int` | ASCII code value of `expr`. |

## Additional information

* ASCII() is limited to character values between 0 and 127

## Examples

{% include /sql-guide/sql-eg-table-all-datatypes-links.md %}

## Convert string character to ASCII value

```
SELECT _id, ASCII(stringcol) FROM all_datatypes;
```
