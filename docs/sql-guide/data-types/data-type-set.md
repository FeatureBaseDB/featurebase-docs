---
title: SET
layout: default
parent: Data types & constraints
grand_parent: SQL guide
nav_order: 4
---

# SET data type

The SET data type is used to set multiple values for a single column.

## DDL syntax

```
[ID | STRING]SET
```

## Arguments

| Argument | Description | Internal data type |
|---|---|---|
| IDSET | Set multiple ID values for a single column | `set` |
| STRINGSET | Set multiple STRING values for a single column. | `keyed set` |

## Additional information

The SET data type is used to:
* group by
* search for discrete values

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table_create_eg_all_datatypes.md %}

## Further information

* [SETQ data type](/docs/sql-guide/data-types/data-type-setq)
