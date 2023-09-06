---
title: SHOW DATABASES
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 7
---

# SHOW DATABASES statement

Show detail on all databases in the system.

{% include /cloud/cloud-only-note.md %}

## Syntax

```
SHOW DATABASES
```

## Returns

| Column | Description | Additional information |
|---|---|---|
|`_id` | Unique identifier required for API and FBSQL connections that do not use user credentials |
|`name` | Database name set at creation. | DB names cannot be altered |
| `owner` | User account that created the database |  |
| `updated_by`| User account that made last update |  |
| `create_at` | Create date timestamp |  |
| `updated_at` | Last modified timestamp |  |
| `workers` | Compute nodes available to a Serverless database | [Learn about Cloud serverless databases](/docs/cloud/cloud-databases/cloud0db-serverless-manage) |
| `description` | Optional text description of database |  |

## Examples

### Show all databases

```sql
SHOW DATABASES
```
