---
title: CREATE TABLE ndjson-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# CREATE TABLE ndjson-target

Create a FeatureBase table with:
* a numeric unique identifier
* BOOL, ID, STRING and TIMESTAMP data types
* `IF NOT EXISTS` and `WITH COMMENT` table options

## Before you begin

* [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
Learn about FeatureBase data types used in this statement:
* [BOOL data type](/docs/sql-guide/data-types/data-type-bool)
* [ID data type](/docs/sql-guide/data-types/data-type-id)
* [INT data type](/docs/sql-guide/data-types/data-type-int)
* [STRING data type](/docs/sql-guide/data-types/data-type-string)
* [TIMESTAMP data type](/docs/sql-guide/data-types/data-type-timestamp)

## CREATE TABLE statement

```sql
CREATE TABLE
  IF NOT EXISTS
  ndjson-target (
    _id ID,
    type STRING,
    actor_id ID,
    actor_login STRING,
    actor_url STRING,
    repo_id ID,
    repo_name STRING,
    repo_url STRING,
    payload_ref STRING,
    payload_ref_type STRING,
    payload_master_branch STRING,
    payload_description STRING,
    payload_pusher_type STRING,
    public BOOL,
   created_at TIMESTAMP
  )
   WITH COMMENT 'this table intended for ndjson data';
```

## Next step

* [BULK INSERT using an NDJSON data source](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-bulk-ndjson-target)
