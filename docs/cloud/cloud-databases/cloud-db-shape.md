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


## Database Shapes

{% include /cloud/trial-account-limits.md %}

The shapes labeled as "Development" have:
* only one node
* are smaller and have less compute for development and testing purposes.

Otherwise, the shapes have:
* overprovisioned disk space and memory to ensure best performance
* data replication should a node go down.

{% include /cloud-db/cloud-db-total-shapes.md %}
## Further information

* [Learn how to manage FeatureBase Cloud databases](/docs/cloud/cloud-databases/cloud-db-manage)
* [Query database shapes via the API](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/getServiceProperties)
