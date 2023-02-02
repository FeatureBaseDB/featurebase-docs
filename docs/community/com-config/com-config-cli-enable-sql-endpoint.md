---
title: Enable SQL endpoint
layout: default
parent: Community
---

The SQL endpoint allows you to execute SQL statements:
* on the command-line
* over an HTTP endpoint

## Before you begin

{% include /com-install/com-install-before-begin.md %}
* cd to `~/featurebase/opt`

## Syntax

```sh
~/featurebase/opt$ ./featurebase cli --<flag>
```

## Common Flags

| Flag | Description | Example | Further information |
|---|---|---|---|
| `h` or `help` | CLI help | `./featurebase cli --help` |  |
| `history-path string` | Path for SQL execution history files |  |  |
| `db-id string` | DatabaseID where table is found. |  |  |

## FeatureBase Community connection flags

| Flag | Description | Example | Further information |
|---|---|---|---|
| `host string` | Featurebase hostname | default `localhost` |  |
| `port string` | FeatureBase port | default `10101` |  |

## FeatureBase Cloud connection flags

| Flag | Description | Example | Further information |
|---|---|---|---|
| `email string` | FeatureBase Cloud user email address |  |  |
| `password string` | FeatureBase Cloud user password. |  |  |
| `org-id string` | Cloud OrganizationID |  |
| `region string` | Cloud region for FeatureBase Cloud access | us-east-2 |  |
| `db-id string` | DatabaseID where table is found. |  |  |

## AWS Cognito client connection flags

| Flag | Description | Example | Further information |
|---|---|---|---|
| `client-id string` | AWS Cognito Client ID for FeatureBase Cloud access. |  | [AWS Cognito client](https://docs.aws.amazon.com/AWSJavaScriptSDK/v3/latest/clients/client-cognito-identity/index.html){:target="_blank"} |

## Examples

### Run SQL queries on your local server

`./featurebase cli`

### Run SQL against commands FeatureBase Cloud


## Further information

* [FeatureBase SQL guide](/docs/sql-guide/sql-guide-home)
* [Run SQL over an HTTP endpoint](/docs/community/com-api/com-api-sql-endpoint)
