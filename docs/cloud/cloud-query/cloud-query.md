---
title: Query cloud data
layout: default
parent: Cloud query
grand_parent: Cloud
nav_order: 1
has_toc: false
---

# How do I query data in FeatureBase Cloud?
{: .no_toc }

FeatureBase Cloud has a built-in query editor that supports queries written using SQL and native Pilosa Query Language.

{% include page-toc.md %}

## Before you begin

{% include /cloud-db/cloud-db-dependencies.md %}
* [Learn how to import data to FeatureBase](/docs/cloud/cloud-ingest/cloud-ingest-manage)
* [Learn how to query FeatureBase data](/docs/cloud/cloud-query/cloud-query-home)
* [FeatureBase SQL](/docs/sql-guide/sql-guide-home)
* [Pilosa Query Language](/docs/pql-guide/pql-home)

## How do I use the Cloud Query editor?

* Click **Query** then use the following features:

| Feature | Description | Additional information |
|---|---|---|
| Database picker | Choose a database containing your tables and data | [Create database](/docs/cloud/cloud-databases/cloud-db-manage) |
| Export results | Click **<span class="material-icons-outlined">download</span> Export** to save results |  |
| Format results | * Click result column to sort ascending or descending<br/>* Click **Columns <span class="material-icons md-18">View Column</span>** to select columns to show or hide |  |
| Limit query results | Limit query results to 10, 100, 1000 or 10000 rows |  Defaults to 100 rows |
| Run queries | * Click **Run**<br/>* **Ctrl**+**Enter** on Windows or Linux)<br/>* **CMD** + **Enter** on MacOS | **Network error** occurs if a query exceeds 4000 seconds before returning results. |
| Schema browser | View and search the tables and views in your database | [CREATE TABLE](/docs/cloud/cloud-tables/cloud-table-manage) |
| Select a query | Select a specific line to run, or insert the cursor to run from that point down |  |
| View query history | View and search all queries run during the current session. | Query history is deleted when you logout or clear your browser cache |
| Write queries | Query editor supports one or more queries and auto-suggests valid SQL and PQL | * [SQL Guide](/docs/sql-guide/sql-guide-home)<br/>* [PQL Guide](/docs/pql-guide/pql-home) |
