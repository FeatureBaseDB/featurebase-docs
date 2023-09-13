---
title: System Tables
layout: default
parent: SQL guide
---

# FeatureBase system tables
{: .no_toc }

FeatureBase system tables:
* contain database configuration, settings, and metrics
* are logical, in-memory and dynamically created unless stated.

{% include page-toc.md %}

## System Database tables

| System table | Description | Additional information |
|---|---|---|
| `fb_views` | Contains a catalog of existing views in the database | Created when one or more views are created |
| `fb_database_info` | Contains properties and state of each database in the system | One database per row |
| `fb_database_nodes` | Lists database nodes or **Serverless* database state and worker connectivity | [Learn about Cloud Serverless databases](/docs/cloud/cloud-databases/cloud-db-serverless) |
| `fb_performance_counters` | Contains metrics on database nodes and database workers |

## System DDL tables

| System table | Description | Additional information |
|---|---|---|
| `fb_table_ddl` | Contains DDL (Data Definition Language) to recreate user tables in the existing database | INSERT statements are not included |

## Query tables

| System table | Description | Additional information |
|---|---|---|
| `fb_exec_requests` | Contains a log of SQL queries executed (and executing) by database node | [fb_exec_requests additional](#fb-exec-requests-additional) |
|

## Additional information

### fb_exec_requests additional
* `fb_exec_requests` keeps only the latest 2000 records (queries)
* `fb_exec_requests.sql` and `fb_exec_requexts.plan` are limited to 4000 characters.

{% include /sql-guide/query-status.md %}
