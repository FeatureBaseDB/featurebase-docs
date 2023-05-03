---
title: Serverless Preview 
layout: default
parent: Cloud
has_children: false
nav_order: 14 
---

# FeatureBase Serverless

{: .no_toc }

{% include /serverless/serverless-preview-warning.md %}

FeatureBase Serverless is a new architecture for FeatureBase that separates compute power and storage and allows each to scale independently.

{% include page-toc.md %}

## Why Serverless?

### Separation of storage and compute
Serverless databases have durable storage that is separated from compute. You can consume and scale each independently based on your use-cases’ needs.

### Zero down time scaling
Serverless databases can have compute scaled up and down at any time without interruption to your services. Your database can increase the number of [workers](#workers) for surges in traffic during peak hours, as well as scale workers down during quiet hours. Your storage will grow with you over time, without any ceilings or need for manual scaling.

### Pay only for what you use
Compute and storage are metered independently, and you are only charged based on what you use. 

### Improved availability
In the event a worker fails, there is no risk of data loss or inability for other workers to read your data. Data is highly available and stored redundantly across multiple locations, in addition to having 11 nines of durability.

## Workers
"Workers" (or "units") is a new concept specifically for serverless databases. A worker is a reference to "compute" that is assigned to a database.
Workers handle computation and transpiling of queries and data. Workers can be added and removed from a database dynamically using `SQL`.

{% include /serverless/serverless-worker-shape.md %}

## Known limitations

* [Serverless limitations](/docs/cloud/cloud-troubleshooting/issue-serverless-limitations/)

## Further information

* [Create a serverless database](/docs/cloud/cloud-databases/cloud-db-create-serverless)
* [Scaling a serverless database](/docs/cloud/cloud-databases/cloud-db-serverless-scale)