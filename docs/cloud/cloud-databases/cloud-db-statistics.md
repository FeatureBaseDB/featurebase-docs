---
title: Cloud database metrics
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 10
---

# Where do I find my database metrics?
{: .no_toc }

Metrics on running databases are available on the home page.

Additional information is available on the Database summary page.

{% include page-toc.md %}

## Before you begin
{: .no_toc }

* [Learn about Cloud databases](/docs/cloud/cloud-databases/cloud-db-manage)
* [Create a FeatureBase database](/docs/cloud/cloud-databases/cloud-db-create-custom)

## How do I view Database properties?

Database properties can be obtained using two methods:

| Method | Steps |
|---|---|
| GUI | Click **Databases** > `your database name` to open the summary page |
| SQL | `SELECT * FROM fb_database_info;` and `SELECT * FROM fb_database_nodes;` |

The following properties are available for all databases:

| Property | Description | Additional information |
|---|---|---|
| Database ID | Unique identifier for the database required for API and FBSQL connections that do not require user credentials |
| Status | {% include /concepts/summary-db-states.md %} | [Learn about cloud database states](/docs/cloud/cloud-databases/cloud-db-states) |
| Memory | Current available memory based on your choice of shaped or serverless database | [Learn about database types](#what-types-of-database-can-i-create) |
| Owner | User name of account that created the database | [Manage users](/docs/cloud/cloud-users/cloud-users-manage) |
| Version | {% include /cloud-db/cloud-summary-db-version.md %} | [Learn more about your database version](/docs/cloud/cloud-databases/cloud-db-versions) |
| Created | Time and date since database creation and user name of creator |  |
| Last modified | Time and date since last alteration and user name that made changes |  |
| Disk utilization | Actual memory used by database and data |  |
| Query endpoint URL | Endpoint used for Cloud REST API queries |  |

## How do I view query statistics?

Query statistics can be viewed in two ways:

| Method | Steps |
|---|---|
| GUI | Click **Home** |
| SQL | `SELECT * FROM fb_exec_requests;` |

The following statistics are available:

| Statistic | Description | Additional information |
|---|---|---|
| Average query response time | The average time a query takes to execute on your database | Values based on query execution times in `fb_exec_requests system table` | [fb_exec_requests system table](/docs/sql-guide/system-tables/system-tables-home/#fb_exec_requests) |
| Queries per second | A graph of queries processed each second on the database, updated every 15 seconds | Graph is reset on page refresh |

## How do I view disk utilization ?

You can view disk utilization in two ways:

| Method | Steps |
|---|---|
| GUI | Click **Home** |
| SQL | `SELECT * FROM fb_database_nodes;` |

The following metric is available

| Metric | Description |
|---|---|
| Disk utilization | How much disk space is being used by a database and its data |

## Data ingestion

Click **Home** to view the data ingestion graph.

| Metric | Description | Additional information |
|---|---|
| Ingested records per second | A graph of records ingested by the database, updated every 15 seconds | Graph reset on page refresh |

## Account information

The **Home** page contains a summary of billing information.

* [Learn more about billing on your account](/docs/cloud/cloud-org-manage)
