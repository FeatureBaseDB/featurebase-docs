---
title: SHOW CREATE TABLE
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 6
---

# SHOW CREATE TABLE statement

Output the data definition language (DDL) CREATE TABLE statement for a specified FeatureBase table.

## BNF diagram

![expr](/assets/images/sql-guide/show_create_table.svg)

## Syntax

```sql
SHOW CREATE TABLE table_name;
```

## Arguments

| Argument | Data type | Description |
|---|---|---|
| `table_name` | String | Name of existing FeatureBase table |

## Returns

| Column name | Data type | Description |
|---|---|---|
| `ddl` | String | DDL for CREATE TABLE statement |

## Examples

{: .note}
>Run the following statement before attempting the example that follows:
> * [CREATE TABLE all-datatypes](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-datatypes)

```
SHOW CREATE TABLE all-datatypes;

ddl  |
-----+
create table all-datatypes (_id id, boolcol bool, decimalcol decimal(3), idcol id, idsetcol idset, idsetqcol idsetq timequantum 'YMD' ttl '24h0m0s', intcol int min 0 max 10000, stringcol string(max), stringsetcol stringset, stringsetqcol stringsetq timequantum 'YMD' ttl '24h0m0s', timestampcol timestamp timeunit 'ms', vectorcol vector(5) tuplestore);
```
