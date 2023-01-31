---
title: BULK INSERT CSV example
layout: default
parent: Statements
grand_parent: SQL guide
---

# Ingest a CSV with BULK INSERT


## Before you begin

{% include /sql-guide/bulk-insert-eg-before-begin.md%}
## Step 1: create table

```sql
CREATE TABLE age (
    _id STRING,
    name STRING,
    description STRING,
    gender STRING,
    country STRING,
    occupation STRING,
    birth_year INT min -32767 max 32767,
    death_year INT min -32767 max 32767,
    death_manner STRING,
    birth_age INT min -32767 max 32767
) keypartitions 12 shardwidth 65536;
```

## Step 2: ingest data

```sql
BULK INSERT
INTO age (_id, name, description, gender, country, occupation,
    birth_year, death_year, death_manner, birth_age )
MAP(0 STRING,
1 STRING,
2 STRING,
3 STRING,
4 STRING,
5 STRING,
6 INT,
7 INT,
8 STRING,
9 INT )
FROM
    'https://featurebase-public-data.s3.us-east-2.amazonaws.com/age.csv'
WITH
    BATCHSIZE 100000
    FORMAT 'CSV'
    INPUT 'URL'
    HEADER_ROW;
```

## Step 3: query the data

```sql
SELECT COUNT(*) FROM age;
```
```sql
SELECT TOP(10) * FROM age;
```

## Further information

* [BULK INSERT using NDJSON data source](/docs/sql-guide/statements/statement-insert-bulk-ndjson-example)
