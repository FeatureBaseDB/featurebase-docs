---
title: CREATE TABLE
layout: default
parent: Statements
grand_parent: SQL guide
---

## CREATE TABLE statement

Creates a FeatureBase table. The table already exists and `IF NOT EXISTS` is not specified the statement will not be successful.

## BNF diagrams

![expr](/assets/images/sql-guide/create_table_stmt.svg)

### COLUMN_LIST
![expr](/assets/images/sql-guide/column_def.svg)

#### Type_name
![expr](/assets/images/sql-guide/type_name.svg)

#### Column_constraint
![expr](/assets/images/sql-guide/column_constraint.svg)

### Table_options
![expr](/assets/images/sql-guide/table_options.svg)

## DDL Syntax

```
CREATE TABLE table_name
  [IF NOT EXISTS]
  (COLUMN_LIST)
  [comment 'comment'];
```

## Arguments

| Argument | Description | Required? | Further information |
|---|---|---|
| `table_name` | Valid table name | Yes | [Naming standards](#naming-standards)
| `IF NOT EXISTS` | Optional argument that stops statement execution if a table of the same name already exists | No |  |
| COLUMN_LIST | List of column names, data types and optional constraints. The list must include the `_id` column | Yes | * [_id column](#_id-column)<br/>* [Naming standards](#naming-standards)<br/>* [Data types](/docs/sql-guide/data-types/data-types-home) |
| `comment` | Optional string literal that describes the table | No |  |

## Additional information

### Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-table/cloud-standard-naming-table.md %}
{% include /cloud-table/cloud-standard-naming-col.md %}

### `_id` column

{% include /cloud-table/cloud-summary-table-pk.md %}

## Examples

### CREATE TABLE with decimal data type

{% include /sql-guide/table_create_products_sales.md %}

### CREATE TABLE with integer constraints

```sql
create table doctest
  (
    _id id,
    numbers int min -9007199254740991 max 9007199254740991,
    words string
  );
```

### CREATE TABLE with all column types

{% include /sql-guide/table_create_eg_all_datatypes.md %}


## Further information

* [SHOW CREATE TABLE](/docs/sql-guide/statements/statement-table-create-show)
* [SHOW TABLES](/docs/sql-guide/statements/statement-tables-show)
* [ALTER TABLE](/docs/sql-guide/statements/statement-table-alter)
* [SHOW COLUMNS](/docs/sql-guide/statements/statement-columns-show)
* [Data types](/docs/sql-guide/data-types/data-types-home)
