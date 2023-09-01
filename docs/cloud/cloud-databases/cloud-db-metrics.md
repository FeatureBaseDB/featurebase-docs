---
title: Cloud database metrics
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 4
---

# Where do I find my database metrics?
{: .no_toc }

Metrics on running databases are available on the home page.

Additional information is available on the Database summary page.

{% include page-toc.md %}

## Before you begin
{: .no_toc }

* [Learn about Cloud databases](/docs/cloud/cloud-databases/cloud-db-manage)
* [Create a FeatureBase database](/docs/cloud/cloud-databases/cloud-db-create)

## Metrics available on the FeatureBase homepage

Click **Home** to learn about the following metrics:

| Metric | Description | Additional information |
|---|---|
| Disk utilization | How much space is being used by a database and its data |
| Average query response time | The average time a query takes to execute on your database | Values based on query execution times in [fb_exec_requests system table](/docs/sql-guide/system-tables/system-tables-home/#fb_exec_requests) |
| Queries per second | A graph of queries processed each second on the database, updated every 15 seconds | Graph reset on page refresh |
| Ingested records per second | A graph of records ingested by the database, updated every 15 seconds | Graph reset on page refresh |
| Credit available | Available credit on the account based on current usage | [View detailed credit and usage](/docs/cloud/cloud-org-manage) |

## Information available on the Databases page

* Click **Databases** then the database name to access further information on your database.

| Information | Description | Additional information |
|---|---|---|
| Database ID | Unique identifier required for API and FBSQL connections that do not use user credentials |   |
| Status | {% include /concepts/summary-db-states.md %} | [Learn about cloud database states](/docs/cloud/cloud-databases/cloud-db-states) |
| Memory | Current available memory based on your choice of shaped or serverless database | [Learn about database types](#what-types-of-database-can-i-create) |
| Owner | User name of account that created the database | [Manage users](/docs/cloud/cloud-users/cloud-users-manage) |
| Version | {% include /cloud-db/cloud-summary-db-version.md %} | [Learn more about your database version](/docs/cloud/cloud-databases/cloud-db-versions) |
| Created | Time and date since database creation and user name of creator |  |
| Last modified | Time and date since last alteration and user name that made changes |  |
| Disk utilization | Actual memory used by database and data |  |
| Query endpoint URL | Endpoint used for Cloud REST API queries |  |
