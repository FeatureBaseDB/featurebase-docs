---
title: STRING
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 7
---

# STRING data type

## DDL Syntax

```
STRING
```

## Arguments

| Argument | Description |
|---|---|
| STRING | Used for STRING, CHAR and VARCHAR data. |

## Additional information

The STRING data type has a `keyed mutex` internal data type and recommended for queries:
* on discrete values,
* with `group by` where cardinality is low

{: .note}
>High cardinality data will:
>* decrease performance
>* increase storage overheads

### Constraining string values

Single quotation marks are used for string values in the following statements:
* [INSERT/REPLACE](/docs/sql-guide/statements/statement-insert)
* [SELECT](/docs/sql-guide/statements/statement-select)

## Examples

### CREATE TABLE with string data types

{% include /sql-guide/table-create-prod-sale-string-eg.md %}

### SELECT FROM string column

```sql
SELECT * FROM products WHERE prodlist LIKE '%pen%';
```

### CREATE TABLE with all data types

{% include /sql-guide/table_create_eg_all_datatypes.md %}
