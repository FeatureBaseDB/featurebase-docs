---
title: SQL guide
layout: default
has_children: true
nav_order: 10
has_toc: true
---

# FeatureBase SQL guide
{: .no_toc }

FeatureBase supports different types of queries that are discussed further in the following reference pages.

{% include page-toc.md %}

## Before you begin

Create a FeatureBase database using one of the following methods:
* [Create database using Cloud GUI](/docs/cloud/cloud-databases/cloud-db-manage)
* [Create database using Cloud API](https://api-docs-featurebase-cloud.redoc.ly/latest/#operation/createDatabase){:target="_blank"}

## Running SQL queries

SQL queries can be run against FeatureBase tables in the following ways:

{% include /sql-guide/sql-guide-supported-tools.md %}

## Syntax notation

```sql
KEYWORD
<variable or element>
<alternative> | <alternative2>
<repeat element until indicated>...
<repeat element separated by commas until indicated>,...
{ required elements }
( required parenthesis )
[ optional elements ]
```

## View history

System tables contain a history of queries and other information

| History required | Query |
|---|---|
| Database metrics | `SELECT * FROM fb_performance_counters;` |
| Query log | `SELECT * FROM fb_exec_requests;` |

## Statements

* [SQL statements](/docs/sql-guide/statements/statements-home)

## Functions

* [SQL functions](/docs/sql-guide/functions/functions-home)

## Data types

* [SQL data types](/docs/sql-guide/data-types/data-types-home)

## Operators

* [SQL operators](/docs/sql-guide/operators/operators-home)

## Expressions

* [SQL expressions](/docs/sql-guide/expressions/expressions-home)

## System Tables

* [System Tables](/docs/sql-guide/system-tables/system-tables-home)

## Further information

* [FeatureBase SQL issues](/docs/sql-guide/issues/sql-guide-issues)
