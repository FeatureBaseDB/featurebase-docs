---
title: Migrate data
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 6
---

# How do I migrate data to a new database?

A shaped database cannot be altered. However, you can recreate your tables and migrate data to a new database.

The simplest way to do this is using the fbsql command-line interface.

{: .note}
This process works for any FeatureBase database.

## Before you begin

* [Learn about shaped databases](/docs/cloud/cloud-databases/cloud-db-shaped)
* [Learn about the fbsql CLI interface](/docs/tools/fbsql/fbsql-home)
* [Learn how to install fbsql](/docs/tools/fbsql/fbsql-install)
* [Connect to your Cloud database using fbsql](/docs/tools/fbsql/fbsql-connect-cloud-db)

## Part one - Backup your tables and data



### Step 1 - Generate SQL to recreate your tables

* Run the `SHOW TABLES` statement to learn which tables are in the system

```sql
SHOW TABLES;
```

* Set fbsql to send query output to a file:

```
\out backup-tables.sql
```

* Using the results, run the following statement to obtain CREATE TABLE statements for each of your tables:

```sql
SHOW CREATE TABLE <tablename>
```

* Copy the results of each statement to a text file.

* Verify the results have been saved to the output file:

```
\! cat backup-tables.sql
```

## Step 2 - Export your data

* Set a data output filename:

```
\out backup-data.sql
```

* Set fbsql to output data as CSV:

```
\pset format csv
```

* Run select statements on your tables:

```sql
SELECT * FROM <tablename>
```

## Part two - create destination tables and import data

### Step 1 - create destination database

{: .important}
This step is performed in the FeatureBase Cloud GUI

{% include /cloud-db/cloud-sample-db-summary.md %}

### Step 2 - connect to the destination database

* [Connect to your Cloud database using fbsql](/docs/tools/fbsql/fbsql-connect-cloud-db)

### Step 3 -  Create destination tables

* Run the `CREATE TABLE` statements from the backup file:

```
\i backup-tables.sql
```

* Verify the tables have been created successfully:

```sql
SHOW TABLES;
```

### Step 4 - Import data to tables

Run the `BULK INSERT` statement on your `backup-data.csv` file:

* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
* [BULK INSERT CSV example](/docs/sql-guide/statements/statement-insert-bulk-csv-example)
