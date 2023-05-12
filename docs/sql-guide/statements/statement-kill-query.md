---
title: KILL QUERY
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 20
---

## KILL QUERY statement

Kills a running SQL query. If the targeted query is not in running status then the kill statement will not be successful.

## BNF diagrams

![expr](/assets/images/sql-guide/kill_query_stmt.svg)

## DDL Syntax

```
KILL QUERY 'request_id';
```

## Arguments

| Argument | Description | Required? | Further information |
|---|---|---|
| `request_id` | Request ID of the query to be killed. Value must be enclosed in single quote. | Yes | [List running queries](#list-currently-running-queries)

## Additional information

### List currently running queries

Following system table query will return a list of currently running queries in the Featurebase database. If you need to stop a running query, copy the `request_id` value from the item belonging to the query you want to stop and pass it to the `kill query` statement. The system table query also will be listed in the result because it was running when the result list was prepared.

```
select request_id, status, start_time, sql 
from fb_exec_requests 
where status='running';
```

## Examples

### Kill a query to terminate unnecessary processing
In this example we run the system table query to get the list of running queries. We locate the `request_id` for the query we want to stop, we pick the group by query on `large_data_set` table. Then we run the `kill query` statement with that query's `request_id` value to submit a cancel request. 

```sql
select request_id, status, start_time, sql 
from fb_exec_requests 
where status='running';

 request_id                           | status  | start_time                       | sql
--------------------------------------+---------+----------------------------------+--------------------------------------------
 571f25ac-1d8c-49b8-a53d-111408964632 | running | 2023-05-12T16:13:39.342617-04:00 | select high_card_attribute, sum(measurement)
                                      |         |                                  | from large_data_set
                                      |         |                                  | where status='active'
                                      |         |                                  | group by high_card_attribute                 
                                      |         |                                  |
 11b511a7-efcf-44f3-8fdc-3eb864873b48 | running | 2023-05-12T16:20:08.560989-04:00 | select request_id, status, start_time, sql
                                      |         |                                  | from fb_exec_requests
                                      |         |                                  | where status='running'
```

Following statement will submit a cancel request to the server. 

```sql
KILL QUERY '571f25ac-1d8c-49b8-a53d-111408964632';

 result                  | status
-------------------------+---------
 Kill request submitted. | pending
```

After the server successfully cancels a running query, the client application that submitted the query will receive the following error. Also the server will set the query's status to `cancelled`.

```
Error: [0:0] request '571f25ac-1d8c-49b8-a53d-111408964632' killed by user
```

## Further information

* [SHOW CREATE TABLE](/docs/sql-guide/statements/statement-table-create-show)
* [SHOW TABLES](/docs/sql-guide/statements/statement-tables-show)
* [ALTER TABLE](/docs/sql-guide/statements/statement-table-alter)
* [SHOW COLUMNS](/docs/sql-guide/statements/statement-columns-show)
* [Data types](/docs/sql-guide/data-types/data-types-home)
