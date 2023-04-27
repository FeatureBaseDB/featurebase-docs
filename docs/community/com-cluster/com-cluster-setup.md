---
title: Create a cluster
layout: default
parent: Community cluster
grand_parent: Community
---

# How do I create a FeatureBase cluster?

FeatureBase Clusters are setup using the `featurebase.conf` TOML configuration file on multiple systems.

{% include /com-cluster/com-cluster-summary.md %}

## Before you begin

* [Install FeatureBase on multiple systems](/docs/community/com-home)
* [Learn about etcd cluster members](https://etcd.io/docs/v3.3/faq/#why-an-odd-number-of-cluster-members){:target="_blank"}
* Edit cluster parameters in `*/featurebase/opt/featurebase.conf`

## Cluster parameter syntax

```toml
#advertise parameters
advertise = <IP Address>:10101
advertise-grpc = <IP Address>:20101

#node parameters
name = "<node-name>"

#bind parameters
bind = "<cluster-ip>:10101"
bind-grpc = "<cluster-ip>:20101"

#data parameters
data-dir = "<data-directory>"

#log parameters
log-path = "<log-directory>"

#cluster parameters
[cluster]
  name = "<cluster-name>"
  replicas = <integer>
  long-query-time = <integer><time-unit>
  partition-to-node-assignment =
  anti-entropy-interval =
#etcd parameters
[etcd]
  cluster-url =
  listen-client-address =
  listen-peer-address =
  advertise-peer-address = ""
  initial cluster = "<cluster-name>:<port>,..."
```

{% include /com-config/com-config-param-advertise.md %}

## Node parameters

| Flag | Data type | Description | Default | Additional |
|---|---|---|---|---|
| <node-name> | String | Unique name for the node | `featurebase1` | Can match `[cluster] name` for parent node. |

{% include /com-config/com-config-param-bind.md %}

{% include /com-config/com-config-param-data.md %}

{% include /com-config/com-config-param-log.md %}

## `[cluster]` parameters

| Flag | Data type | Description | Default | Additional information |
|---|---|---|---|---|---|
| `name` | String | Human readable name for the cluster which must be identical on all nodes | `featurebase1` | Can match <node-name> for parent node |
| `long-query-time` | String | Duration before log and stat messages are generated represented by <integer-value><time-unit>, e.g., 10s (10 seconds) |  | [Time units values](#timeunit-values) |
| `replicas` | Integer | Number of hosts in the cluster. | 1 | [Replicas additional](#cluster-replicas) |
| `partition-to-node-assignment` | String | Controls how partitions are assigned to cluster nodes. | `jmp-hash` | [Partition-to-node-assignment additional](#cluster-partition-to-node-assignment) |

## `[ETCD]` parameters

| Flag | Data type | Description | Default | Additional information |
|---|---|---|---|---|---|
| `cluster-url` | String | URL of an existing cluster that new nodes can join | `featurebase1=http://localhost:10401` |  |
| `listen-client-address` | String | Address and port to bind to for client communication | `http://localhost:10401` | FeatureBase will use `listen-client-address` values if undefined. |
| `listen-peer-address` | String | Local IP address and port to that nodes in the cluster can connect to communicate | `http://localhost:10301` | `listen-peer-address: localhost:10401` will unreachable by other nodes on the same subnet. |
| `advertise-peer-address` | String | Node address and port used by nodes in the cluster to connect. |  | FeatureBase will use `listen-peer-address` values if undefined. |
| `initial-cluster` | String | A comma-separated list of `advertise-peer-address` values for each node in the cluster, beginning with the parent node. | `featurebase1=http://localhost:10301` | This list must be identical on all nodes in the cluster. |

## Additional information

{% include /com-config/com-config-advertise-extra.md %}

{% include /com-config/com-config-bind-extra.md %}

### [Cluster] `replicas`

To meet `etcd` requirements, `replicas` should be set to:
* a minimum of `3`
* an odd number

### [cluster] `partition-to-node-assignment`

{% include /com-cluster/com-cluster-partition-node-extra.md %}

{% include /sql-guide/timestamp-timeunit-table.md %}

### `[etcd]` additional

ETCD runs on each node in a FeatureBase cluster rather than as a separate instance.

`[etcd]` parameters must be consistent on each node in the cluster because they govern:
* node-to-node and intra-cluster communication
* maintain data integrity and fault tolerances across the cluster

## Examples

### `[etcd]` parameters for all nodes on same subnet

Use these parameters for

```toml
listen-peer-address = "local-ip:port"
advertise-peer-address ="<advertise>"
initial-cluster = "<parent-node-ip:port>,<advertise-peer-address>,..."
```

### `[etcd]` parameters for nodes outside subnet

These parameters should be used for nodes that connect via:
* proxy server
* different URL
* DNS settings

``` toml
listen-peer-address = "<local-ip>:port"
advertise-peer-address = "<connection-ip-for-this-node:port>"
initial-cluster = "<parent-node-ip:port>, <advertise-peer-address>,..."
```

## Further information

* [FeatureBase configuration parameters](/docs/community/com-config/com-config-flags)
* [Learn more about etcd](https://etcd.io/docs/v3.5/faq/){:target="_blank"}