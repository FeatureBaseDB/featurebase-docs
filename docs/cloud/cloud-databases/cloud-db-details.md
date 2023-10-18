---
title: Cloud database properties
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 10
---

# Where do I find my database details?
{: .no_toc }

FeatureBase provides access to details and statistics on your database.

{% include page-toc.md %}

## Before you begin
{: .no_toc }

* [Learn about Cloud databases](/docs/cloud/cloud-databases/cloud-db-manage)
* [Create a FeatureBase database](/docs/cloud/cloud-databases/cloud-db-create-custom)

## How do I view database details?

* Click **Databases** > `your-database-name` to open the summary page

## Detail view

| Detail | Description | Additional information |
|---|---|---|
| Database ID | Unique identifier for the database required for API and FBSQL connections that do not require user credentials | * [Cloud API](https://api-docs-featurebase-cloud.redoc.ly/){:target="_blank"}<br/>* [FBSQL tool](/docs/tools/fbsql/fbsql-home) |
| Status | Cloud database states include Provisioning and Running. | [Learn about cloud database states](/docs/cloud/cloud-databases/cloud-db-states) |
| Memory | Current available memory based on your choice of shaped or serverless database | [Create a custom database](/docs/cloud/cloud-databases/cloud-db-manage/#create-a-custom-database) |
| Owner | User name of account that created the database | [Manage users](/docs/cloud/cloud-users/cloud-users-manage) |
| Version | Database version information | [Learn more about your database version](/docs/cloud/cloud-databases/cloud-db-versions) |
| Created | Time and date since database creation with user name of creator |  |
| Last modified | Time and date since last alteration with user name that made changes |  |
| Disk utilization | Actual memory used by database and data | [] |
| Query endpoint URL | Endpoint used for Cloud REST API queries | [Cloud API](https://api-docs-featurebase-cloud.redoc.ly/){:target="_blank"} |

##


## Database details

Your database details include

## How do I view Database properties?

Database properties can be obtained using two methods:

| Method | Steps |
|---|---|
| GUI |  |
| SQL | `SELECT * FROM fb_database_info;` and `SELECT * FROM fb_database_nodes;` |

The following properties are available for all databases:


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
