---
title: Database shapes
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 1
---

# What types of database can I create in FeatureBase Cloud?
{: .no_toc }

{% include /cloud-db/cloud-summary-db-shape.md %}

{: .important}
Cloud Database shapes incur an hourly fee, chargeable at the end of the month.

{% include page-toc.md %}

## Before you begin

{% include /cloud/cloud-before-begin.md %}
* {% include contact-support.md %} to upgrade your account to access production database shapes


### Database Shapes

All database shapes are available to users.

The shapes labeled as "dev" have;
* only one node
* are smaller and have less compute for development and testing purposes.

The shapes labeled as "prod" have:
* overprovisioned disk space and memory to ensure best performance
* data replication should a node go down.

All trial users will have $300 credits to spend as they wish.

{% include /cloud-db/cloud-db-shape-dev.md %}
{% include /cloud-db/cloud-db-shape-prod.md %}
## Further information

* [Learn how to manage FeatureBase Cloud databases](/docs/cloud/cloud-databases/cloud-db-manage)
* [Query database shapes via the API](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/getServiceProperties)
