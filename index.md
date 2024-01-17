---
title: FeatureBase help
layout: home
has_children: false
nav_order: 1
has_toc: false
---

# Welcome to FeatureBase Cloud help
{: .no_toc }

FeatureBase Help contains everything you need to create, import and run queries on your data.

{% include page-toc.md %}


## Before you begin

* [Learn more about FeatureBase](https://www.featurebase.com/){:target="_blank"}

## Summary of features

| Feature | Benefit | Additional information |
|---|---|---|
| API | Programmatic access to all Cloud features over HTTPS | [FeatureBase Cloud API](https://api-docs-featurebase-cloud.redoc.ly/){:target="_blank"} |
| Audit logging | FeatureBase Cloud keeps an audit log of activity |  |
| Authentication | OAuth authentication for users, and SSH keys for API calls |  |
| Automated backups | Full backups to S3 and EBS snapshotting are automated and occur daily for all databases |  |
| Deployment | Deploy on Microsoft Azure or Amazon AWS S3 infrastructure in the US, with additional regions coming soon |  |
| Encryption | Data is encrypted in flight and at rest |
| Fully managed | No need to maintain your own infrastructure and calculate processor and memory requirements | [FeatureBase pricing](https://www.featurebase.com/pricing){:target="_blank"} |
| Low-latency database | Database design won't be impacted by queries across billions of records or large ingest streams inserting and updating records | [Breaking the latency floor whitepaper](https://www.featurebase.com/blog/breaking-the-latency-floor-white-paper){:target="_blank"} |
| One-click GUI for DB creation and monitoring | Tools to create standard or custom databases, monitor and configure available at a single click | [Manage databases](/docs/cloud/cloud-databases/cloud-db-manage) |
| Query data | Query data using SQL via the GUI, using the API, the Python client library or CLI tool |  |
| Simple user management | Create accounts directly in the GUI for users in your organization to collaborate on your data | [Manage users](/docs/cloud/cloud-users/cloud-users-manage) |
| SQL-based data import | Import data using BULK INSERT statement from CSV, NDJSON , Parquet or ORC | [SQL BULK INSERT](/docs/sql-guide/statements/statement-insert-bulk) |
| Usage-based metering and billing | GUI provides detailed intra-hour insights into your spend |  |
| User control | Users can be invited via their email address, then assigned Admin or User roles |  |



## Cloud trial

{% include /cloud/trial-account-limits.md %}

## Terms and conditions

Cloud users must agree to the FeatureBase terms of service to complete sign-up.

* [Learn about the Cloud terms of service](https://www.featurebase.com/cloud-terms){:target="_blank"}


## Comparing Cloud and Community editions

These tables provided a side-by-side comparison of Cloud and Community functionality.



## Data Consumption

| Feature | Cloud | Community | Additional information |
|---|---|---|---|
| Query UI  | [Query cloud tables](/docs/cloud/cloud-query/cloud-query-home) | [Query community tables](/docs/community/com-query/com-query-home) |  |
| FeatureBase SQL - HTTPS | Yes | Yes | Any language/tool (Python, Go, etc) that can read over HTTPS  |
| FeatureBase PQL - HTTPS |  Yes | Yes | Any language/tool (Python, Go, etc) that can read over HTTPS  |

| Python Client | [Python client library](/docs/tools/python-client-library/python-client-library-home/) | [Python client library](/docs/tools/python-client-library/python-client-library-home/) | |


## Operations

| Feature | Cloud | Community |
|---|---|---|
| Backup and Restore | Yes | [Community backup and restore](/docs/community/com-backup/com-config-backup) |
| Data Replication | Yes | Yes |
| Metrics & Monitoring | [Cloud metrics](/docs/cloud/cloud-databases/cloud-db-details/) | [Community metrics & monitoring](/docs/community/com-monitoring/com-monitoring-home) |
| Editable FeatureBase Config File | No | Yes |

## Security

| Feature | Cloud | Community | Additional information |
|---|---|---|---|
| Encryption In Flight | Yes | Yes |  |
| Encryption at Rest | Yes | Yes |   |
| Authentication + Authorization (OAuth) | Yes | [Community authentication](/docs/community/com-auth/com-auth-manage) |  |
| Role-Based Access Control (Basic) | [Cloud user roles](/docs/cloud/cloud-users/cloud-ref-user-roles) | Yes |   |
| User Management | [Cloud user management](/docs/cloud/cloud-users/cloud-users-manage) | Yes |  |
| Audit Logging | Yes | Yes |   |

## How do I set up FeatureBase Cloud?

Follow these instructions which will guide you through the setup process:

* [Set up your FeatureBase cloud account](/docs/cloud/cloud-home)

## How do I install FeatureBase Community?

Follow these instructions to learn about system requirements and how to install FeatureBase on your operating system.

* [Install FeatureBase Community locally](/docs/community/com-home)
