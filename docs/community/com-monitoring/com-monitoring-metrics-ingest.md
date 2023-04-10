---
title: Ingestion Metrics
layout: default
parent: Community monitoring
grand_parent: Community
---

# Ingestion Metrics reference

Ingester metrics are prefixed with a `[ingester-type]` which is one of the following:
* ingester_csv
* ingester_kafka
* ingester_sql

## Before you begin

* {% include /com-install/com-install-before-begin.md %}
* [Manage monitoring](/docs/community/com-monitoring/com-monitoring-home)
* [Learn about ingestion](/docs/community/com-ingest/com-ingest-manage)

## Ingester metrics

| Metric name | Metric directory | Description | Additional information |
|---|---|---|---|
| `[ingester-type]_deleter_rows_added_total` |  | Row count to be deleted | (labels: type={packed-bool,set,mutex,bool,int,decimal}) |
| `[ingester-type]_ingester_schema_changes_total |  | count of schema changes |  |
| `[ingester-type]_ingester_rows_added_total`|  | count of rows ingested |  |
| `[ingester-type]_batch_import_duration_seconds` | Import timing for each batch which start per-batch import timing. | Timing start = last record added to batch<br/>Timing end = batch fully imported |
