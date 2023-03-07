---
title: Kafka
layout: default
parent: fbsql
grand_parent: Tools
nav_order: 1
---

# Kafka

If fbsql is provided the `--kafka-config=filename` flag, it will run as a Kafka consumer in non-interactive mode. Based on the configuration provided in **filename**, fbsql will read messages from a Kafka topic and submit them to FeatureBase via BULK INSERT statements. In this mode, fbsql processes messages until terminated by the user.

The configuration file must be in [TOML](https://toml.io/) format.

Messages must be in JSON format.

## Configuration options

### General

```
hosts = ["host1", "host2"]
```

Specifies one more more Kafka broker hosts. If only one host is needed, this value can be provided without brackets.

```
group = "groupname"
```

Kafka consumer group. See the [Confluent Documentation](https://docs.confluent.io/platform/current/clients/consumer.html) for more information.

```
topics = ["topic1", "topic2"]
```

Specifies one more more Kafka topics to consumer from. If only one topic is needed, this value can be provided without brackets.

```
table = tablename
```

The name of the FeatureBase table into which Kafka messages, consumed by fbsql, will be written. The table must exist prior to using it as a kafka message destination.

```
batch-size = int
```

The size of the BULK INSERT batches sent to FeatureBase. This defaults to `1` which will not be very performant, so it is highly recommended that this be set to something more reasonable.

```
batch-max-staleness = duration
```

Maximum length of time that the oldest record in a batch can exist before flushing the batch. Note that this can potentially stack with timeouts waiting for the source. The format of this value should be provided as a duration string, which is a possibly signed sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms", "-1.5h" or "2h45m". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". Set this value to `0` to disable timeouts. Defaults to `1s`.

```
timeout = duration
```

Time to wait for more records from Kafka before flushing a batch. The format of this value should be provided as a duration string, which is a possibly signed sequence of decimal numbers, each with optional fraction and a unit suffix, such as "300ms", "-1.5h" or "2h45m". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". Set this value to `0` to disable timeouts. Defaults to `1s`.

### Fields

Providing field configuration is optional. If no fields are provided, fbsql will determine a basic field configuration to use by inspecting the FeatureBase table specified in the `table` configuration option. In this case, the Kafka keys in the Kafka messages should map directly to the fields in the FeatureBase table.

Fields are specified as a TOML [arrays of tables](https://toml.io/en/v1.0.0#array-of-tables).

```
[[fields]]
name        = "foo"
source-type = "int"
source-path = ["demo", "categories"]
```

```
name = "name"
```

Specifies the name of the FeatureBase field into which data will be written.

```
source-type = "int"
```

Specifies the type that fbsql should expect the message data for the field to be represented in the Kafka message. For example, if the message contains `"foo":"6"` (even though field `foo` is defined as an `int` on the FeatureBase table), the configuration for `foo` should contain `source-type = "string"`. If a `source-type` is not provided, it will default to the FeatureBase field's type.

Possible `source-type` values are:
```
bool
int
decimal(scale)
id
idset
string
stringset
timestamp
```

```
source-path = ["key", "sub-key"]
```
If the data for a particular FeatureBase field needs to be extracted from a nested JSON object, that can be specified using `source-path`. Each additional element in the array represents a nested key. If `source-path` is not provided, it will default to the value provided in `name`.

```
primay-key = true
```

Exactly one field should be set as the primary key. The name of the field designated the primary key does not need to map to a field in FeatureBase.

## Examples

### Event stream with general data types

```sql
create table events (
    _id id,
    name string,
    qty int,
    categories stringset,
    level decimal(2),
    ts timestamp
)
```

```json
{
    "event_id":30,
    "name":"name-30",
    "qty":4,
    "demo":{
        "categories":["A", "C"],
        "level":24.56
    },
    "ts":"2023-02-27T12:26:25.091284-06:00"
}
```

```toml
hosts = ["localhost:9092"]
group = "grp"
topics = "events"
table = "events"
batch-size = 300
batch-max-staleness = "5s"
timeout = "5s"

[[fields]]
name        = "event_id"
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
```
