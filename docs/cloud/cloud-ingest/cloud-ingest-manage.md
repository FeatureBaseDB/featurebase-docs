---
title: Manage cloud ingestion
layout: default
parent: Cloud
has_children: false
nav_order: 8
has_toc: false
---

# How do I import data to my FeatureBase Cloud database?
{: .no_toc }

There are several ways to import data to an existing table in your database.

## Before you begin
* [Signup to FeatureBase Cloud](/docs/cloud/cloud-signup)
* [Learn how to connect to Cloud](/docs/cloud/cloud-db-connect/cloud-db-connect)
* [Learn how to create databases](/docs/cloud/cloud-databases/cloud-db-manage)
* [Learn how to create Cloud tables](/docs/cloud/cloud-tables/cloud-table-manage)

## Insert data using SQL statements

SQL statements are supported by:
* API
* GUI query editor
* CLI fbsql tool

[BULK INSERT statement](/docs/sql-guide/statements/statement-insert) | CSV<br/>inline<br/>ndJSON<br/>orc<br/>parquet<br/>

[INSERT statement](/docs/sql-guide/statements/statement-insert) | Inline

| Data source | SQL INSERT | SQL BULK INSERT | Supported by |
|---|---|
| CSV |
| Inline |
| ndJSON |
| Orc |
| Parquet |

|  | inline |
|  |



## Insert CSV data using Cloud GUI

* [Learn how to import CSV data and map to FeatureBase data types](/docs/cloud/cloud-ingest/cloud-table-upload-data)







| Data source | SQL statement |
|---|
| CSV |
| inline data |
| CSV |
| ndjson |
| ORC |
| Parquet |


| Statement | Data source | API | CLI | GUI |
|---|---|---|---|---|
| [INSERT statement] | inline data |
| [BULK INSERT statement] | inline data<br/>csv<br/>ndjson<br/>orc<br/>parquet |



| Data source | Description | GUI | SQL | Additional information |
|---|---|---|---|
| CSV | Suitably formatted Comma Separated Values |


| CSV | Comma separated values | GUI database, GUI SQL, BULK INSERT
| Inline data | Data added to a SQL statement |
| ndJson | ndJson file |
|


BULK INSERT - CSV, ndjson, Orc, Parquet, inline
INSERT - inline -
GUI - DB add data/SQL



There are two methods to import data to Cloud:

| Method | Description | Additional information |
|---|---|---|
| GUI | Upload data from a suitably formatted CSV file then map to FeatureBase data types | [Upload data from a CSV file in the UI](/docs/cloud/cloud-ingest/cloud-table-upload-data) |
| SQL | Run SQL INSERT and BULK INSERT statements via API, GUI  |



| Method | Description | Additional information |
|---|---|---|
| API | Run SQL INSERT and BULK INSERT statements on your database via the API | [Learn how to run SQL via Cloud API](https://api-docs-featurebase-cloud.redoc.ly/latest#tag/Query){:target="_blank"} |
| CLI | Run SQL INSERT and BULK INSERT statements on your database tables with the fbsql CLI tool | * [Learn how to use fbsql to connect to Cloud](/docs/tools/fbsql/fbsql-connect-cloud-db)<br/>* [Learn how to run SQL using fbsql](/docs/tools/fbsql/fbsql-running-sql) |
| GUI | Upload CSV data then map to FeatureBase data types | [Upload data from a CSV file in the UI](/docs/cloud/cloud-ingest/cloud-table-upload-data) |
| GUI Query editor | Run SQL INSERT and BULK INSERT
| SQL | SQL statements can be run from the API, the GUI or





*
* [SQL INSERT statement](/docs/sql-guide/statements/statement-insert)
* [SQL BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
