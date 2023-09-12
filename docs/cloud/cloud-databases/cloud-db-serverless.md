---
title: Scalable databases
layout: default
parent: Manage Databases
grand-parent: Cloud
nav_order: 1
---

## How do I scale my database resources?

{% include /cloud-db/cloud-db-serverless-summary.md %}

{% include /cloud-db/serverless-preview-warning.md %}

{: .note}
You can also create a **Shaped** database with fixed resources

## Before you start

{% include /cloud/cloud-before-begin.md %}

## What are the benefits of Serverless databases?

### Scaling the database with Workers

A Serverless database can be scaled up or down using the `ALTER DATABASE` statement to add or remove **Workers** from the database.

A worker has the following attributes:

| Attribute | Description | Additional information |
|---|---|---|
| Resources | 2GB of memory and 1x vCPU | 0 to 8 workers can be assigned to any Serverless database |
| Purpose | Handle computation and transpiling of queries and data |  |

**Workers** can be granted or revoked:
* without losing data
* without the need to spin the database down

### Database storage

Serverless Databases have storage with 11 nines of durability, plus:
* higher availability and durability for your data
* Redundant storage across multiple locations (highly available to Workers)

## What are the limitations of Serverless databases?

{% include /cloud-db/serverless-preview-limitations.md %}

## How are Serverless databases priced?

Serverless database architecture separates Virtual CPU compute resources from database storage.
Storage and CPU usage are charged separately based on your usage.

Virtual CPU and storage are metered

Compute and storage resources are metered separately and cha

FeatureBase Serverless databases have compute and storage metered and charged independently based on your usage.

Serverless databases are charged based on metred compute and storage usage.

## How do I create a Serverless database?

* [Create a Serverless Database in the Cloud UI](/docs/cloud-cloud-databases/cloud-db-create-custom.md)
<!--* [CREATE DATABASE statement](/docs/sql-guide/statements/statement-db-create)-->

## Where do I find information on my database?


## How do I alter and scale a Serverless database?

* [ALTER DATABASE statement](/docs/sql-guide/statements/statement-db-alter)

## How do I delete a Serverless database?

* [Delete Serverless database in Cloud UI](/docs/cloud/cloud-databases/cloud-db-delete)
* [DROP DATABASE statement](/docs/sql-guide/statements/statement-db-drop)
