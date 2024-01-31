---
title: Frequently Asked Questions
layout: default
has_children: true
nav_order: 14
---

# Frequently Asked Questions

The FeatureBase Cloud FAQ contains answers to your questions.

## Connection FAQ

| Question | Answer |
|---|---|
| I can't connect to `https://cloud.featurebase.com` | [Check Web App Availability on `FeatureBase Status`](/docs/cloud/cloud-faq/coud-status-site){:target="_blank"} |
| My API calls are failing to connect to my database |  Check your database exists<br/>[Check API availability on `FeatureBase Status`](/docs/cloud/cloud-faq/coud-status-site){:target="_blank"}<br/>[Create API keys](/docs/cloud/cloud-authentication/cloud-auth-create-key) |
| The fbsql tool won't connect to my database | Connection parameters may be incorrect | [Learn how to connect to FeatureBase Cloud](/docs/tools/fbsql/fbsql-connect-cloud-db) |
| My Python app won't connect to FeatureBase Cloud | [Learn how to connect using the Python Client Library](/docs/tools/python-client-library/python-client-connect-cloud) |

## Login FAQ

| Question | Answer |
|---|---|
| I can't login to FeatureBase Cloud | * Reset your password</br>* Contact your organization administrator<br/>* [Verify the Cloud App is running](/docs/cloud/cloud-faq/coud-status-site){:target="_blank"} |

## Database FAQ

| Question | Answer |
|---|---|
| What does `DATABASE UNKNOWN` mean? | This message relates to changing database state | [Learn about Database states](/docs/cloud/cloud-databases/cloud-db-states) |
| I cannot create a database | * [Verify the Cloud App is running](/docs/cloud/cloud-faq/coud-status-site){:target="_blank"}<br/>* [Upgrade from a Trial to a paid account](/docs/cloud/cloud-org/cloud-org-upgrade-to-paid/) |
| What does `LIMIT REACHED` mean? | FeatureBase Trial accounts are limited to 5 databases<br/>[Learn how to upgrade your account](/docs/cloud-org/cloud-org-billing) |

## Table FAQ

| Question | Answer |
|---|---|
| My integer values are truncated | Integer values that fall outside the default or user-specified minimum and maximum constraints are truncated | [SQL INT data type](/docs/sql-guide/data-types/data-type-int) |
