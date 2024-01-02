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

When you login to FeatureBase for the first time, or have deleted all databases, you're offered three choices for a first database:

* **Start with a small database** which is suitable for small projects or testing
* **Create a sample database** containing terabytes of data you can use to evaluate FeatureBase at scale
* **Create a custom database** that meets your specific needs

{: .note}
You can also [create a database using the Cloud API](#create-database-using-the-cloud-api).

{% include page-toc.md %}

## Before you begin
{: .no_toc }
{% include /cloud/cloud-before-begin.md %}

## Start with a small database

{% include /cloud-db/cloud-small-db-summary.md %}

* [Learn how to create a small database](/docs/cloud/cloud-databases/cloud-db-create-small)

## Create a sample database

{% include /cloud-db/cloud-sample-db-summary.md %}

* [Learn how to create a sample database](/docs/cloud/cloud-databases/cloud-db-create-sample)

## Create a custom database

[Learn how to create a database with pre-selected, fixed resources](/docs/cloud/cloud-databases/cloud-db-shaped)

## How do I learn more about my database?

* [Database details](/docs/cloud/cloud-databases/cloud-db-details)
* [Query and ingestion statistics](/docs/cloud/cloud-databases/cloud-db-stats)

## Cloud database backups

FeatureBase automatically backs-up your databases every 24 hours.

{: .note}
[Contact FeatureBase Support on Discord](https://discord.com/invite/bSBYjDbUUb){:target="_blank"} to ask questions or to get help restoring a backup.

{% include /cloud-db/cloud-db-drop-methods.md %}

## Next step

* [Learn how to manage FeatureBase Cloud tables](/docs/cloud/cloud-tables/cloud-table-manage)
