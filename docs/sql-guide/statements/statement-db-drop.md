---
title: DROP DATABASE
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 4
---

# DROP DATABASE statement

Drops the specified database.

{: .note}
[DROP DATABASE from Cloud](/docs/cloud/cloud-databases/cloud-db-drop) for GUI actions.

## Before you begin
* [Create Cloud database in GUI](/docs/cloud/cloud-databases/cloud-db-manage/#how-do-i-create-a-cloud-database), OR
* [Create Cloud database using API](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/createDatabase){:target="_blank"}

## Syntax

```sql
DROP DATABASE <database_name>;
```

## Arguments

| Argument | Data type | Description | Required |
|---|---|---|---|
| `<database_name>` | string | Name of the database to delete | yes |

## Example

```sql
DROP DATABASE test_db;
```
