---
title: CREATE TABLE
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 5
---

## CREATE TABLE statement

Create a FeatureBase table with the specified columns and data types.

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

## Syntax

```
CREATE TABLE
  [IF NOT EXISTS]
  <table_name>
  (_id [ID | STRING], <column-list>)
  [WITH COMMENT 'comment'];
```

## Arguments

| Argument | Description | Required? | Additional information |
|---|---|---|
| `<table_name>` | Valid table name | Yes | [Naming standards](#naming-standards) |
| `IF NOT EXISTS` | Stop statement execution if a table of the same name already exists | No |  |
| `_id` | table unique identifier | Yes | [_id column](#_id-column) |
| `<column-list>` | Comma separated list of column names and data types with optional or required constraints | At least one column is required | [Naming standards for column names](#naming-standards)<br/>* [Data types](/docs/sql-guide/data-types/data-types-home) |
| `WITH COMMENT` | Optional string literal that describes the table | No |  |

## Additional information

### Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-table/cloud-standard-naming-table.md %}
{% include /cloud-table/cloud-standard-naming-col.md %}

### `_id` column

{% include /cloud-table/cloud-summary-table-pk.md %}

<!--next include has heading "CREATE TABLE examples"-->

{% include /sql-guide/sql-eg-table-create-statements.md %}

## Further information

* [SHOW CREATE TABLE](/docs/sql-guide/statements/statement-table-create-show)
* [SHOW TABLES](/docs/sql-guide/statements/statement-tables-show)
* [ALTER TABLE](/docs/sql-guide/statements/statement-table-alter)
* [SHOW COLUMNS](/docs/sql-guide/statements/statement-columns-show)
* [Data types](/docs/sql-guide/data-types/data-types-home)
