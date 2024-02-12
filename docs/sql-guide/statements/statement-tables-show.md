---
title: SHOW TABLES
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 7
---

# SHOW TABLES statement

Shows the list of FeatureBase tables that exist on the server.

## BNF diagram

![expr](/assets/images/sql-guide/show_tables.svg)

## Syntax

```sql
SHOW TABLES [WITH SYSTEM];
```

## Arguments

| Argument | Description |
|---|---|
| SHOW TABLES | Return all tables owned by the user |
| WITH SYSTEM | Include FeatureBase system tables in results |

## Returns

| Column Name | Data type | Description | Additional information |
|---|---|---|---|
| `_id` | id or string  | Table ID | [`_id` column](#_id-column) |
| name | string | Name of the table | [naming standards](#naming-standards)
| owner | string | Owner of table (omitted for system-created sample data) |  |
| updated_by | string | Last user to update table |  |
| created_at | timestamp | Table time-date created | [TIMESTAMP() data type](/docs/sql-guide/data-types/data-type-timestamp) |
| updated_at | timestamp | Table time-date last updated | [TIMESTAMP() data type](/docs/sql-guide/data-types/data-type-timestamp) |
| keys | bool | Boolean that is true when keys are used (_id) is a string |  |
| space_used | int | bytes used by the table. |  |
| description | string | description COMMENT of the table |  |

## Additional information

### `_id` column

{% include /cloud-table/cloud-summary-table-pk.md %}

### Naming standards

{% include /faq/standard-naming-obj.md %}
{% include /cloud-table/cloud-standard-naming-table.md %}
{% include /cloud-table/cloud-standard-naming-col.md %}

## Examples

{: .note}
>Run the following statement before attempting the example that follows:
> * [CREATE TABLE all-datatypes](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-all-datatypes)

```
SHOW TABLES WITH SYSTEM;
```

## Further information

* [FeatureBase Cloud system tables](/docs/sql-guide/system-tables/system-tables-home)
