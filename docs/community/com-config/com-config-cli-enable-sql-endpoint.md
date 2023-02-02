---
title: Enable SQL endpoint
layout: default
parent: Community
---

The SQL endpoint allows you to execute SQL statements:
* on the command-line
* over an HTTP endpoint

## Before you begin


* cd to `~/featurebase/opt`

## FeatureBase SQL Command Line Interface flags

Obtain a full list of CLI flags by running `./featurebase cli --help`

### Syntax

```sh
~/featurebase/opt$ ./featurebase cli --<flag>
```

### Flags

| Flag | Description | Example |Further information |
|---|---|---|---|
| `client-id string` | Cognito Client ID for FeatureBase Cloud access. |  |  |
| `db-id string` | DatabaseID |  |  |
| `email string` | Email address for FeatureBase Cloud access. |  |  |
| `h` or `help` | CLI help |  |  |
| `history-path string` | Path for SQL execution history files |  |  |
| `host string` | Featurebase hostname | default `localhost` |  |
| `org-id string` | Cloud OrganizationID |  |
| `password string` | Password for FeatureBase Cloud access. |  |  |
| `port string` | FeatureBase port | default `10101` |  |
| `region string` | Cloud region for FeatureBase Cloud access | us-east-2 |  |

## Examples

### Enable SQL endpoint on the command line

* Run `./featurebase cli`

### Run SQL against commands FeatureBase Cloud


## Further information

* [FeatureBase SQL guide](/docs/sql-guide/sql-guide-home)
* [Run SQL over an HTTP endpoint](/docs/community/com-api/com-api-sql-endpoint)
