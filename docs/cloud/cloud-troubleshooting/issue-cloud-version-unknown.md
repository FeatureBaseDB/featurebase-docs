---
title: Database "Unknown"
layout: default
parent: Cloud troubleshooting
grand_parent: Cloud
nav_order: 4
---

# Why is my database's version "Unknown"?

| Database Status | Description | 
|---|---|
| CREATING/PROVISIONING | The database does not fully exist yet, and as such the database's version is unknowable. |
| DEPROVISIONING/DELETED |  If a database is deleted before it finishes creating/provisioning, then it may not have a version | 
| FAILED | If a database fails to start properly then it may not have a version, or may not respond properly to version requests |

{: .note }
This is not an all encompassing list. Generally speaking, if a database fails to respond when asked for its version then its version will be displayed as "Unknown"
