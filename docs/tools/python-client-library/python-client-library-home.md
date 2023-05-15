---
title: Python client library
layout: default
parent: Tools
has_children: false
nav_order: 2
has_toc: false
---

# Python client library

Python client library is a python package containing components needed to access FeatureBase database from your python application. It provides a simple client class which represents a connection to the FeatureBase database. This connection class exposes a small set of public methods for the application to submit queries to FeatureBase database. 

## Install 

Python client library is included in FeatureBase binary release bundle starting from version molecula-v5.0.0. You can download the python wheel file from one of the release folders at: [releases.molecula.cloud](https://releases.molecula.cloud){:target="_blank"}. The python wheel file is stored in a subfolder named `python-featurebase` under the version specific binary release folder. Download and install the wheel file using `pip` into your local python environment.

## Usage

### client object

Import the featurebase library and instantiate a client object by calling the client's constructor method. 

```python
# import the library
import featurebase

# create a default client that connects to localhost:10101
client = featurebase.client()

# create a client that connects to FeatureBase cloud
c_client = featurebase.client(
  hostport="query.featurebase.com/v2", 
  database="<database_id>", 
  apikey="<APIKey_secret>"
  )
```

The following are the parameters for the client constructor method. All parameters are optional.

| Parameter | Description | Default |
|---|---|---|
| hostport | Hostname and port number of your featurebase instance, it should be passed in 'host:port' | localhost:10101 |
| database | Database id of your featurebase cloud instance |  |
| apikey | [Cloud API key](https://api-docs-featurebase-cloud.redoc.ly/latest#operation/postKey) that can be used for authn/authz for cloud |  |
| cafile | Fully qualified certificate file path |  |
| capath | Fully qualified certificate folder |  |
| origin | Request origin, should be one of the allowed origins defined for your featurebase instance |  |
| timeout | Number of seconds to wait before timing out on server connection attempts |  |

### Invoke client.query(sql string) method to submit a single SQL query

The client.query() method accepts a single SQL query and submits it to the server for execution, it returns a simple result object providing access to data, status and warnings.

```python
result = client.query("SELECT * from demo;")
if result.ok: 
    print(result.data)
```

### Invoke client.querybatch(sqllist []string, stoponerror bool, asynchronous bool) method to submit a batch of SQL queries

The client.querybatch() method accepts a list of SQL queries and submits them for synchronous or asynchronous execution and returns the results as a list of result objects. By default the queries are synchronously executed one at a time in the input order.

| Parameter | Description | Default |
|---|---|---|
| sqllist | List of SQL queries |  |
| asynchronous | Flag to indicate whether the SQLs should be run concurrently or sequentially | False |
| stoponerror | Flag indicates what to do when a SQL error happens. Passing True will stop executing remaining SQLs in the input list. This parameter is ignored when asynchronous=True | False |

### Synchronously run the queries in a batch

Synchronous run best suited for executing DDL and DMLs that need to follow specific run order.

```python
# create a list of SQLs. 
sqllist=[]
sqllist.append("CREATE TABLE demo1(_id id, i1 int);")
sqllist.append("INSERT INTO demo1(_id, i1) VALUES(1, 100);")
sqllist.append("INSERT INTO demo1(_id, i1) VALUES(2, 200);")
sqllist.append("select * from demo1;")
#submit the list for synchronous execution and 
#instruct the client to stop when there is an error.
results = client.querybatch(sqllist, stoponerror=True)
for result in results:
    if result.ok: 
        print(result.data)
```                

### Asynchronously run the queries in a batch 

Asynchronous run best suited for running SELECT queries that can be run concurrently.

```python
# create a list of SQLs. 
sqllist=[]
sqllist.append("SELECT * from demo1;")
sqllist.append("SELECT count(*) from demo1;")
sqllist.append("SELECT max(i1) from demo1;")
#submit the list for asynchronous execution.
results = client.querybatch(sqllist, asynchronous=True)
for result in results:
    if result.ok: 
        print(result.data)
```

### result object

Result is a simple data object representing the results of a SQL query. It contains the following attributes.

| Attribute | Description | 
|---|---|
| ok | Boolean indicating query execution status |
| schema | Field definitions for the result data |
| data | Data rows returned by the server |
| error | Error information with a code and description |
| warnings | Warning information returned by the server |
| execution_time | Amount of time (microseconds) it took for the server to execute the SQL |

## Further Information

* [SQL guide](/docs/sql-guide/sql-guide-home)