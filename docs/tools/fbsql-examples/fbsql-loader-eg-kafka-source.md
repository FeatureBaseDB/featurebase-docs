---
title: Example Kafka data source
layout: default
parent: fbsql loader examples
grand_parent: Tools
nav_order: 2
---

# Example Kafka data source

{% include /fbsql/fbsql-loader-eg-source-summary.md %}

## Before you begin

* [Learn about Apache Kafka Confluent Consumer](https://docs.confluent.io/platform/current/clients/consumer.html){:target="_blank"}
* [Create a FeatureBase Cloud database](/docs/cloud/cloud-databases/cloud-db-manage)
* [Create target table](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-impala-postgres)

## Step 1 - Create data source

* Open a terminal then run `nano data-kafka-msg.json`
* Enter the following content then save.

```json
{
    "event_id":30,
    "name":"name-30",
    "qty":4,
    "demo":{
        "categories":["A", "C"],
        "level":24.56
    },
    "ts":"2023-02-27T12:26:25.091284-06:00",
    "events":["e1", "e2", "e3"],
    "memberships":[1,2,3]
}
```

## Step 2 - Create TOML configuration file

* Open a terminal then run `nano example-config.toml`
* Add the following keys and values:

```toml
hosts = ["localhost:9092"]
group = "grp"
topics = "events"
table = "loader-target"
batch-size = 300
batch-max-staleness = "5s"
timeout = "5s"

[[fields]]
name  = "event_id"
source-type = "id"
primary-key = true

[[fields]]
name        = "name"
source-type = "string"

[[fields]]
name        = "qty"
source-type = "int"

[[fields]]
name        = "categories"
source-type = "stringset"
source-path = ["demo", "categories"]

[[fields]]
name        = "level"
source-type = "decimal(2)"
source-path = ["demo", "level"]

[[fields]]
name        = "ts"
source-type = "timestamp"

[[fields]]
name        = "events"
source-type = "stringsetq"

[[fields]]
name        = "memberships"
source-type = "idsetq"

[[fields]]
name        = "recordTimestamp"
source-type = "recordTime"
source-path = ["ts"]
```

* Save then exit nano.

{: .note}
In the example loader configuration shown above, loader will automatically associate the timestamp value from  `recordTimestamp` to the time quantum fields `events` and `memberships`. Loader relates this timestamp to time quantum fields because `recordTimestamp` is defined with `source-type = "recordTime"` to indicate that the time value in this field is the record time and it should be used to process the views associated with the time quantum fields. 

## Next step

* [Import data from your data source](/docs/tools/fbsql-examples/fbsql-loader-eg-ingest )

## Further information
* [Learn about fbsql](/docs/tools/fbsql/fbsql-home)
* [Learn how to install fbsql](/docs/tools/fbsql/fbsql-install)
