---
title: Community
layout: default
has_children: true
nav_order: 4
has_toc: false
---

# FeatureBase Community
{: .no_toc }

FeatureBase Community can be deployed on multiple environments and regionally and includes the following features:
* a web-based GUI with query builder and monitoring
* command-line import from CSV, SQL or Kafka data sources
* command-line backup and restore

Organizations can setup remote monitoring with DataDog or Prometheus metrics

{% include page-toc.md %}

## Architecture diagram

![FeatureBase Network Architecture Diagram](/assets/images/community/featurebase-architecture-diagram.png "FeatureBase Network Architecture Diagram")

## Importing data using Ingesters

* [Learn about importing data to FeatureBase Community](/docs/community/com-ingest/com-ingest-manage)

## Observability

FeatureBase community supports:

* [Datadog monitoring](/docs/community/com-monitoring/old-datadog)
* Prometheus

## FeatureBase nodes

FeatureBase Community is a masterless multi-node system with a single node type.

Like other common distributed data stores, it supports:
* high availability (via shard replication)
* cluster resizing
* distributed query processing

## Default Ports

By default, FeatureBase uses the following ports:

| Port | Used for | Required? | Further information |
|---|---|---|
| 10101 | FeatureBase UI, HTTP(S) queries, SQL queries | Yes | [HTTPS endpoint](/docs/community/com-api/old-http-endpoint) |
| 10301 | Cluster membership | For clustering | [embedded etcd](https://pkg.go.dev/github.com/coreos/etcd/embed) |
| 10401 | Cluster schema | For clustering | [embedded etcd](https://pkg.go.dev/github.com/coreos/etcd/embed) |
| 20101 | gRPC, Python library | Yes | [gRPC API](/docs/community/com-api/old-grpc-api) |

{: .note}
>Default ports can be changed in the `featurebase.conf` file.
>[Learn more about FeatureBase Configuration](/docs/community/com-config/com-config-home)

## Installation requirements

The FeatureBase Community application requires:

* ARM64 or AMD64 (Intel) processor
* nMB RAM
* 175MB Disk (not including data)

[Learn more about FeatureBase system requirements](/docs/community/com-config/old-size-featurebase-database)

## Install FeatureBase Community

FeatureBase Community can be used under the [Apache version 2.0 license](https://www.apache.org/licenses/LICENSE-2.0.html)

| Supported operating system | Further information |
|---|---|---|
| Linux | [Install on Linux](/docs/community/com-install-linux) |
| Apple Macintosh | [Install on Mac](/docs/community/com-install-mac) |
| Windows Subsystem for Linux | [Install on Windows](/docs/community/com-install-windows) |
| All | [FeatureBase Docker setup](https://www.featurebase.com/blog/featurebase-with-a-simple-docker-deployment){:target="_blank"} |

## Troubleshooting

Refer to troubleshooting pages if you experience issues:

* [FeatureBase Community troubleshooting](/docs/community/com-troubleshooting/com-troubleshooting-home)

## Next step

* [Startup and connect to FeatureBase Community](/docs/community/com-startup-connect)
