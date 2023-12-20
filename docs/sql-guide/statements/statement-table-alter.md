---
title: ALTER TABLE
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 8
---

# ALTER TABLE statement

ADD or DROP columns from an existing table

## BNF diagrams

<!---NOTE: alter_table_stmt.svg IS WRONG:
* It omits table_name
* RENAME is not yet implemented and reported reported as JIRA CLOUD-1884
The statement in the Syntax is correct and I've tested it
![expr](/assets/images/sql-guide/alter_table_stmt.svg)-->

![expr](/assets/images/sql-guide/add_column.svg)
![expr](/assets/images/sql-guide/drop_column.svg)

## Syntax

```
ALTER <table-name> {ADD <col-name> <data-type>} | {DROP <col-name>};
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `<table-name>` | Name of existing table to alter | [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create) |
| `<column-name>` | Column identifier or name | [Naming standards](#naming-standards) |
| `<data-type>` | Column data type with optional or required constraint | [SQL data types](/docs/sql-guide/data-types/data-types-home) |

## Additional information

### Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-table/cloud-standard-naming-table.md %}
{% include /cloud-table/cloud-standard-naming-col.md %}
