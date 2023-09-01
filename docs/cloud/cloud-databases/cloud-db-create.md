---
title: Create cloud database
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 2
---

# How do I create a cloud database?
{: .no_toc }

There are two ways to provision a database with a custom configuration in FeatureBase Cloud.

{: .note }
You can also [create a database with pre-loaded data](/docs/cloud/cloud-databases/cloud-db-create-sample)

{% include page-toc.md %}

## Before you begin

{% include /cloud/cloud-before-begin.md %}
* [Learn how to manage databases](/docs/cloud/cloud-databases/cloud-db-manage)

## What types of database are available?

{% include /cloud-db/cloud-db-type.md %}

## Naming standards

{% include /concepts/standard-naming-obj.md %}
{% include /cloud-db/cloud-standard-naming-db.md %}

## How do I provision a database with a custom configuration?

There are two methods to provision a custom configured database.

### Method one - provision database from the homepage

{% include /cloud/homepage-db-create-options.md %} under **Make something custom**.

### Method two - provision database via the Databases page

{% include /cloud-db/cloud-db-new-name.md %}

Choose from the **Memory** drop-down:

* Serverless (Preview) 2GB Worker, or

{% include /cloud-db/cloud-db-total-shape.md %}

{% include /cloud-db/cloud-db-click-create.md %}

## Next step

* [Learn how to create tables](/docs/cloud/cloud-tables/cloud-table-create)

## Further information

* [Create database API reference](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/createDatabase)
* [Learn how to delete a database](/docs/cloud/cloud-databases/cloud-db-delete)
