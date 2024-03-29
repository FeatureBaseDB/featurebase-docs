---
title: Upload data
layout: default
parent: Upload data
nav_order: 2
---

# How do I upload data to FeatureBase Cloud?
{: .no_toc }

Upload data from a CSV file to a new destination table.

{: .note}
You can also upload CSV data using the [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)

## Before you begin

{% include /cloud/cloud-before-begin.md %}
* [Create a database](/docs/cloud/cloud-databases/cloud-db-create-custom)
* Click **Databases** > database name > **Upload Data**.

## Naming standards

{% include /faq/standard-naming-obj.md%}
{% include /cloud-table/cloud-standard-naming-table.md %}

## CSV file structure

Your CSV data file needs the following structure:

* Optional header row
* First column is a unique identifier
* Each item of data is separated by commas
* New line is a new row

## Uploading data to a table

{: .important}
Table column names cannot be changed once the table is defined.

### Step 1: Select a file to upload

* Click **Upload a file**.
* Select the CSV file from the browser.
* Click **The first row contains column labels** if your CSV contains a header row.
* Click **Done**.

### Step 2: Select column data types

{% include /cloud-table/cloud-summary-table-pk.md %}

* Click <span class="material-icons md-18">more_vert</span> on the column.
* Click **Update**.
* Select a type from the **Type** dropdown menu.
* Set a constraint if required.
* Click **Update Column**.

{: .note }
User cannot procced until all column data types have been selected.

### Step 3: Name your table and write data

{: .note}
>You can download SQL statements automatically generated by FeatureBase if required:
>* **DDL** downloads the CREATE TABLE statement
>* **DML** downloads the BULK INSERT statement

* Enter the table name.
* Click **Write my data**.

## Further information

- [Create table API reference](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/createTable)
- [Learn how to query your Cloud data](/docs/cloud/cloud-query/cloud-query-home)
- [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
- [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
