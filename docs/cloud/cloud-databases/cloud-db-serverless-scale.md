---
title: Scale a serverless database
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 3
---

# How do I scale a serverless up or down database?
{: .no_toc }

{% include /serverless/serverless-preview-warning.md %}

This procedure explains how to scale a serverless database up or down. 

{% include page-toc.md %}

## Before you begin

{% include /cloud/cloud-before-begin.md %}
{% include /serverless/serverless-worker-shape.md %}
{% include /serverless/serverless-create-defaults.md %}
{% include /serverless/serverless-worker-limits.md %}

## Scale a serverless database with SQL

<!---
This section needs to move to SQL once out of preview and replaced with a UI method when it exists.
-->

### Syntax 

```sql
ALTER DATABASE {database-name} [WITH UNITS {# workers}];
```

### Examples

```sql
ALTER DATABASE my-db WITH UNITS 3;
```

## Next step

* [Learn how to create tables](/docs/cloud/cloud-tables/cloud-table-create)

## Further information

* [Create database API reference](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/createDatabase)
* [Learn how to delete a database](/docs/cloud/cloud-databases/cloud-db-delete)
* [Serverless limitations](/docs/cloud/cloud-troubleshooting/issue-serverless-limitations/)