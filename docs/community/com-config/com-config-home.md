---
title: Community configuration
layout: default
parent: Community
has_children: true
nav_order: 6
has_toc: true
---

# Community configuration

Configure FeatureBase Community using command-line flags and in the `featurebase.conf` configuration file.

## Before you begin

* [Learn how to install FeatureBase Community](/docs/community/com-home)

## Default Ports

By default, FeatureBase uses the following ports which can be altered in the `/featurebase-install-directory/featurebase.conf` configuration file.

| Port | Used for | Required? | Further information |
|---|---|---|
| 10101 | FeatureBase UI, HTTP(S) queries, SQL queries | Yes | [HTTPS endpoint](/docs/community/com-api/old-http-endpoint) |
| 10301 | Cluster membership | For clustering | [embedded etcd](https://pkg.go.dev/github.com/coreos/etcd/embed) |
| 10401 | Cluster schema | For clustering | [embedded etcd](https://pkg.go.dev/github.com/coreos/etcd/embed) |
| 20101 | gRPC, Python library | Yes | [gRPC API](/docs/community/com-api/old-grpc-api) |

<!--heading in include: "Monitoring and Observability"-->
{% include /com-config/com-config-supported-monitoring.md %}

## Backup and restore

[Backup and restore FeatureBase application data](/docs/community/com-config/old-backups)

## Authentication

* [Learn about authenticating users with FeatureBase](/docs/community/com-auth/com-auth-home)
