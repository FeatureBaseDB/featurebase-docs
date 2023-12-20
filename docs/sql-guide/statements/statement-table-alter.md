---
title: ALTER TABLE
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 8
---

# ALTER TABLE statement

Add, Rename or Drop columns from an existing table.

## BNF diagrams

<!---NOTE: alter_table_stmt.svg IS WRONG:
* It omits table_name
* RENAME is not yet implemented so needs to be removed (see below)
The statement in the Syntax is correct and I've tested it-->
![expr](/assets/images/sql-guide/alter_table_stmt.svg)

<!--RENAME generates an error:
"query error: internal error (/builds/molecula/featurebase/sql3/planner/opaltertable.go:112) column rename is unimplemented"
Once it's implemented:
1. add RENAME back into the BNF diagram
2. add the following SQL to the Syntax (between ADD and DROP) once it's implemented:

RENAME COLUMN {column_name to column_name } |

3. Create an equivalent BNF diagram
-->

![expr](/assets/images/sql-guide/add_column.svg)
![expr](/assets/images/sql-guide/drop_column.svg)

## Syntax

```
ALTER <table_name> [
  ADD {<col-name> <data_type>} |
  DROP_COLUMN {identifier}
  ];
```

## Arguments

| Argument | Description | Additional information |
|---|---|---|
| `<table_name>` | Name of existing table to alter | [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create) |
| `<column-name>` | Column identifier or name | [Naming standards](#naming-standards) |
| `<data-type>` | Column data type with optional or required constraint | [SQL data types](/docs/sql-guide/data-types/data-types-home) |

## Additional information

### Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-table/cloud-standard-naming-table.md %}
{% include /cloud-table/cloud-standard-naming-col.md %}
