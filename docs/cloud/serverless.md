---
title: Serverless 
layout: default
parent: Cloud
has_children: false
nav_order: 14 
---

# Serverless
*Currently in preview*

## Why Serverless?
Serverless is a new architecture to FeatureBase that separates compute power and storage. This allows for independent scaling of compute, storage, or both.  

## Creating a Serverless Database
Before you begin, you should check out how to create a database in our cloud enviornment, as there are a lot of similarities. ([See here](/docs/cloud/cloud-databases/cloud-db-create/))  
One of the major differences is Serverless databases don't have a database shape!

## Workers
The concept of "workers" (or "units") is a new concept, sand pecific to Serverless. A worker is a reference to a "computer" that is assigned to a database. They are created by a Worker Service, which is created by a Worker Service Provider.
Workers handle computation and transpiling of queries and data.

When you create a database, it defaults to 1 worker assigned to that database. This can be adjusted up with an alter database statement. Current limit for workers per database is 8.  
Some examples are:  
```
CREATE DATABASE db1 WITH UNITS 1;
```

```
ALTER DATABASE db1 WITH UNITS 3;
```

## Limitations
As of right now, there are a few limitations when it comes to Serverless.

-   Certain SQL queries do not work quite yet such as:  
    -   GROUPBY_SET  
	-	PERCENTILE  
	-	SELECT-HAVING  
	-	TIME_QUANTUM_INSERT/STRINGSET-RANGEQ  
	-	TIME_QUANTUM_INSERT/IDSET-RANGEQ  
	-	TOP-LIMIT  
-   As well as anything related to the T-Store.  
-   the current limit for workers for a database is 8.  
-   There is no backup nor restore
    -   There is a snapshot store and writelogger that is holds persistent data.
