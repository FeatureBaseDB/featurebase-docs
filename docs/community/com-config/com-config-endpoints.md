---
title: FeatureBase HTTP endpoints
layout: default
parent: Community configuration
grand_parent: Community
---

# FeatureBase HTTP endpoint reference

You can query FeatureBase HTTP endpoints via the CLI.

## Before you begin

{% include /com-install/com-install-before-begin.md %}

## Query syntax

```sh
curl <featurebase-hostname>:10101/<endpoint>
```

## `<endpoint>` list

| Flag | Description |
|---|---|
| `index` | Returns the schema of the specified index in JSON |
| `index/<tablename>` | Returns metadata on the specified `<tablename>` |
| `info` | Returns database shard details and CPU details |
| `metrics` | Returns metric values as set in `featurebase.conf` |
| `status` | Returns the status of the cluster |
| `schema` | Returns the schema of the specified index in JSON |
| `version` | Returns the version of the FeatureBase server |