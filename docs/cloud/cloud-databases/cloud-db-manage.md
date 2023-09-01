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

{% include page-toc.md %}

## Before you begin
{: .no_toc }

{% include /cloud/cloud-before-begin.md %}

## What types of database can I create?

{% include /cloud-db/cloud-db-type.md %}

## Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-db/cloud-standard-naming-db.md %}

## What kind of database can I create for testing purposes?

| Purpose | Method |
|---|---|
| Small projects or testing | [Start with a small database](#start-with-a-small-database) |
| Test the system with a large database | [Create sample database](/docs/cloud/cloud-databases/cloud-db-create-sample) |

## What kinds of database can I create for testing or production?

| Purpose | Method |
|---|---|
| Custom requirements  | [Create custom database](/docs/cloud/cloud-databases/cloud-db-create) |
| Self sizing database | [Create a serverless database](/docs/cloud/cloud-databases/cloud-db-serverless-home) |

## How do I learn more about my database?

* [Learn more about your database metrics](/docs/cloud/cloud-databases/cloud-db-metrics)

## Cloud database backups

{% include /cloud-db/cloud-db-backup.md %}

## How do I drop my database?

* [Drop database](/docs/cloud/cloud-databases/cloud-db-delete)

## Further information

* [Databases API reference](https://api-docs-featurebase-cloud.redoc.ly/latest#tag/Databases)

## Next step

* [Learn how to manage FeatureBase Cloud tables](/docs/cloud/cloud-tables/cloud-table-manage)
