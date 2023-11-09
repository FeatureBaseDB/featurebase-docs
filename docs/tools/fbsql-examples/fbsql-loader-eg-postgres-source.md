---
title: PostgreSQL data source example
layout: default
parent: fbsql loader examples
grand_parent: Tools
nav_order: 3
---

# PostgreSQL data source example for fbsql loader command

This example provides:
* valid SQL to create a table and insert data
* a TOML configuration file that will be used by the fbsql `loader` command to load data from the Impala table to a target in FeatureBase.

## Before you begin

* Create a PostgreSQL Database
* Obtain your Postgres database connection string
* [Learn about TOML configuration settings](/docs/tools/fbsql/fbsql-loader-command)
* [Create a FeatureBase Cloud database](/docs/cloud/cloud-databases/cloud-db-manage)
* [Create target table](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-impala-postgres)

## Step 1 - Create data source

* Connect to your database
* Create the source table:

```sql
CREATE TABLE postgres_table (
  idkey int,
  intf int,
  stringf varchar(30),
  idf int,
  stringsetf varchar(30),
  idsetf varchar(30));
```

* Insert data to the source table:

```sql
INSERT INTO postgres_table VALUES
 (0, 0, 'a', 0, 'a', '3'),
 (1, 0, 'a', 0, 'c', '4'),
 (2, 0, 'a', 0, 'd', '5');
```

## Step 2 - Create TOML configuration file

* Open a terminal then run `nano example-config.toml`
* Add the following keys and values and substitute your PostgreSQL connection string as directed:

```toml
table = "loader-target"
query = "select idkey, intf, stringf, idf, stringsetf, idsetf from postgres_table;"
driver = "postgres"
connection-string = "postgres://<postgres-username>:<postgres-user-password>@localhost:5432/mydatabase?sslmode=disable"
batch-size = 1

[[fields]]
name = "idkey"
source-type = "id"
primary-key = true

[[fields]]
name = "intf"
source-type = "int"

[[fields]]
name = "stringf"
source-type = "string"

[[fields]]
name = "idf"
source-type = "id"

[[fields]]
name = "stringsetf"
source-type = "stringset"

[[fields]]
name = "idsetf"
source-type = "idset"
```

* Save and exit nano.

## Next step

* [Import data from your data source](/docs/tools/fbsql-examples/fbsql-eg-ingest.md )

## Further information
* [Learn about fbsql](/docs/tools/fbsql/fbsql-home)
* [Learn how to install fbsql](/docs/tools/fbsql/fbsql-install)