---
title: Shaped database
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 1
---

# How do I setup a database with predictable pricing?

A Shaped database provides a number of benefits, the most important of which is predictable pricing.

## Before you begin

{% include /cloud/cloud-before-begin.md %}

## What are the benefits of a shaped database?

### Predefined resources

CPU and memory resources are bundled for easier billing. Choose an appropriate shape for your requirements:

| Resource | Minimum | Maximum |
|---|---|
| Memory | 32GB | 2TB |
| Disk storage | 100GB | 2TB |
| Virtual CPU | 12 | 576 |

* [Learn how to assess your database needs using Data Modeling](/docs/concepts/concept-data-modeling)

## What are the limitations of a shaped database?

A shaped database cannot be resized once created. Data must be migrated to a new database.

## How are shaped databases priced?

* [FeatureBase Shaped database pricing](https://www.featurebase.com/pricing){:target="_blank"}

## How do I create a shaped database?

* [Create a Shaped Database in the Cloud UI](/docs/cloud-cloud-databases/cloud-db-create.md)

## How do I alter a shaped database?

Reprovisioning an existing shaped database requires four steps:
1. the creation of a new database
2. migrating data from the original database
3. testing the data has been migrated correctly
4. deleting the original database
