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
| IDSET | Data type used where there is a need to set multiple ID values for a single column | `set` |
| STRINGSET | Data type used to set multiple STRING values for a single column. | `keyed set` |

## Additional information

IDSET and STRINGSET are used to:
* group by
* search for discrete values

## Examples

### CREATE TABLE with all data types

{% include /sql-guide/table_create_eg_all_datatypes.md %}
