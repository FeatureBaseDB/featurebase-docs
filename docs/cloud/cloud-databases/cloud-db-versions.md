---
title: Cloud database versions
layout: default
parent: Manage databases
grand_parent: Cloud
nav_order: 4
---

# Additional database version information
{: .no_toc }

{% include page-toc.md %}


## Where can I find my database version?

### Option 1: View in your list of databases
1. Select databases on the sidebar
2. View your database's version under the version column

### Option 2: View in your database's summary
1. Select databases on the sidebar
2. Click on your database's name
3. View your database's version in the summary

## Why is my database's version "Unknown"?

| Database Status | Explanation | 
|---|---|
| CREATING/PROVISIONING | The database does not fully exist yet, and as such the database's version is unknowable. |
| DEPROVISIONING/DELETED |  If a database is deleted before it finishes creating/provisioning, then it may not have a version | 
| FAILED | If a database fails to start properly then it may not have a version, or may not respond properly to version requests |

{: .note }
This is not an all encompassing list. Generally speaking, if a database fails to respond when asked for its version then its version will be displayed as "Unknown"
