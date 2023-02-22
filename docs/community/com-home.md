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

{% include page-toc.md %}

## Before you begin

* FeatureBase Community can be used under the [Apache version 2.0 license](https://www.apache.org/licenses/LICENSE-2.0.html)

## Architecture diagram

![FeatureBase Network Architecture Diagram](/assets/images/community/featurebase-architecture-diagram.png "FeatureBase Network Architecture Diagram")

## Importing data using Ingesters

* [Learn about importing data to FeatureBase Community](/docs/community/com-ingest/com-ingest-manage)

## FeatureBase nodes

FeatureBase Community is a masterless multi-node system with a single node type.

Like other common distributed data stores, it supports:
* high availability (via shard replication)
* cluster resizing
* distributed query processing

<!--heading in include: "Monitoring and Observability"-->
{% include /com-config/com-config-supported-monitoring.md %}

## Installation requirements

The FeatureBase Community application requires:

* ARM64 or AMD64 (Intel) processor
* nMB RAM
* 175MB Disk (not including data)

[Learn more about FeatureBase system requirements](/docs/community/com-config/old-size-featurebase-database)

<!-- Heading in file: Release file naming standard -->
{% include /com-install/com-install-filename-std.md %}

## Install FeatureBase Community

Choose an installation method:
* [Install on Linux](/docs/community/com-install-linux)
* [Install on MacOS](/docs/community/com-install-mac)
* [Install on Windows](/docs/community/com-install-windows)
* [Install using Docker](https://www.featurebase.com/blog/featurebase-with-a-simple-docker-deployment){:target="_blank"}

## Troubleshooting

Refer to troubleshooting pages if you experience issues:

* [FeatureBase Community troubleshooting](/docs/community/com-troubleshooting/com-troubleshooting-home)

## Next step

Once installed, startup the server and connect to the GUI

* [Startup and connect to FeatureBase Community](/docs/community/com-startup-connect)
