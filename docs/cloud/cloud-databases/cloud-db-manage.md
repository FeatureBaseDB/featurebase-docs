---
title: Manage databases
layout: default
parent: Cloud
has_children: true
nav_order: 6
has_toc: false
---

# How do I manage databases in FeatureBase Cloud?
{: .no_toc }

When you login to FeatureBase for the first time, or have deleted all databases, you're presented with the Welcome page which gives you three ways to create your first database.

## Before you begin
{: .no_toc }
{% include /cloud/cloud-before-begin.md %}

{% include page-toc.md %}

## What kinds of database can I create?

| Your use case | Additional information |
|---|---|---|
| Small projects or testing | [Start with a small database](#start-with-a-small-database) |
| Testing the system with a large database | **Start with a billion records** | [Create sample database](/docs/cloud/cloud-databases/cloud-db-create-sample) |
| Specific needs whilst testing or for production | **Make something custom** | [Create custom database](/docs/cloud/cloud-databases/cloud-db-create) |

## Start with a small database

This one-click database gives you a maximum of 

<!-- NOTE TO SELF
Changes to UI means cloud db shapes only relevant to cloud-db-create
Next step for start small and cloud-db-create is to create tables.
And from create tables you get to import/ingest
-->

## Cloud database shapes

{% include /cloud-db/cloud-summary-db-shape.md %}

* [Learn about cloud database shapes](/docs/cloud/cloud-databases/cloud-db-shape)

## Cloud database versions

{% include /cloud-db/cloud-summary-db-version.md %}

* [Learn more about your database version](/docs/cloud/cloud-databases/cloud-db-versions)

## Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-db/cloud-standard-naming-db.md %}

## Database states

{% include /concepts/summary-db-states.md %}

* [Learn about cloud database states](/docs/cloud/cloud-databases/cloud-db-states)

## Cloud database backups

{% include /cloud-db/cloud-db-backup.md %}

## Cloud database metrics

{% include /cloud-db/cloud-summary-db-metrics.md %}

- [Learn more about your database metrics](/docs/cloud/cloud-databases/cloud-db-metrics)

## Managing databases in FeatureBase Cloud

* [Create database](/docs/cloud/cloud-databases/cloud-db-create)
* [Create database with test data to evaluate the system](/docs/cloud/cloud-databases/cloud-db-create-sample)
* [Drop database](/docs/cloud/cloud-databases/cloud-db-delete)

## Managing databases using the FeatureBase API

* [Databases API reference](https://api-docs-featurebase-cloud.redoc.ly/latest#tag/Databases)

## Next step

* [Learn how to manage FeatureBase Cloud tables](/docs/cloud/cloud-tables/cloud-table-manage)
