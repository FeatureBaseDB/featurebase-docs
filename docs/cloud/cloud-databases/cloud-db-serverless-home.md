---
title: Serverless Database preview
layout: default
parent: Manage Databases
grand-parent: Cloud
nav_order: 2
---

# How do I scale compute power and storage for my FeatureBase Database?
{: .no_toc }

{% include /serverless/serverless-preview-warning.md %}

FeatureBase Serverless Databases provide an architecture which separates computer power and storage so they can be scaled independently based on your use-case.

{% include page-toc.md %}

## How do I scale database compute resources without down-time?
<!--NOTE this would serve well as an intro to cloud-db-serverless-scale.md-->
Serverless architecture introduces the concept of **workers** (or **Units**) which:
* Handle computation and transpiling of queries and data
* Can be added or removed using SQL queries depending on your needs without needing to spin the database down.

{% include /serverless/serverless-worker-shape.md %}

## Scaling database storage
<!--NOTE I think this would serve well as the intro text to Create Serverless Database?-->
Unlike standard Databases where you choose a **Shape** which specifies the total size and resources available, Serverless architecture allows your databases to scale:
* automatically without a set ceiling
* without the need for manual intervention

In addition, data is protected from loss or corruption based on [cloud durability standards (AKA 11 nines)](https://cloud.google.com/blog/products/storage-data-transfer/understanding-cloud-storage-11-9s-durability-target){:target="_blank"} and:
* stored redundantly across multiple locations
* highly available to Workers even if one fails

## Data and compute costs

Unlike FeatureBase Cloud Databases, Serverless Databases are metered and charged based only on your actual usage.

<!--I'd say it'd be worth providing base costs here, or to point users at wherever this is found so they know what they're in for-->

## Known limitations

* [Learn about Serverless Database limitations](/docs/cloud/cloud-troubleshooting/issue-serverless-limitations/)

## How do I create a Serverless Database?

* [Learn how to create a serverless database](/docs/cloud/cloud-databases/cloud-db-create-serverless)

## How do I scale a Serverless Database?

* [Learn how to scale Serverless databases](/docs/cloud/cloud-databases/cloud-db-serverless-scale)
