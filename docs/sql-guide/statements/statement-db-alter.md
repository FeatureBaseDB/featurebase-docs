---
title: ALTER DATABASE
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 8
---

# ALTER DATABASE statement

Cloud Serverless databases can be modified using the ALTER DATABASE statement.

## Before you begin

* [Create a Cloud database](/docs/cloud/cloud-databases/cloud-db-create)

## Syntax

```sql
ALTER DATABASE {database-name}[WITH WORKERS {<int-val>}];
```

###  Arguments

| Argument | Description | Required | Default | Additional information |
|---|---|---|---|---|
| `database-name` | Name of existing database to alter | Yes |  | Database names cannot be altered |
| `WITH WORKERS` | Each worker represents 2GB of memory and 1x vCPU | Yes | 1 | 0 to 8 workers can be set |

## Examples

Set a serverless database with 6GB of memory and 3 vCPU processors.

```sql
ALTER DATABASE my-db WITH WORKERS 3;
```
