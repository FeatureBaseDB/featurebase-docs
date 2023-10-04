---
title: BULK INSERT ORC example
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_order: 40
---

# BULK INSERT example using ORC formatted data source

This BULK INSERT statement:
* reads data from an ORC formatted data source found in a destination URL
* maps data to destination table columns found in `orc-target` table

## Before you begin

* [Learn about the Go ORC format](https://pkg.go.dev/github.com/scritchley/orc){:target="_blank"}
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
* [CREATE TABLE sampleorc](/docs/sql-guide/examples/insert-bulk-orc/sql-eg-table-create-orc-target)

{% include /tips/tip-show-table-for-structure.md %}

## BULK INSERT statement

```sql
BULK INSERT
  INTO orc-target(_id,a,b,c)
  MAP(
    0 id,
    1 STRING,
    2 BOOL,
    3 INT )
  FROM 'https://sample-files-hh.s3.us-east-2.amazonaws.com/samplefile.orc'
  WITH
    FORMAT 'ORC'
    INPUT 'URL';
```


## Step 3: query the data

```sql
SELECT * FROM sampleorc;
```

## Further information

* [SELECT statement](/docs/sql-guide/statements/statement-select)
* [BULK INSERT statement](/docs/sql-guide/statements/statement-insert-bulk)
