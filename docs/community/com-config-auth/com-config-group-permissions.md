---
title: Authentication groups
layout: default
parent: Community authentication
grand_parent: Community
---

# How do I setup authentication groups?

<!-- QUERY: Does this information come from the Azure-AD permission groups??? -->

## Before you begin

* {% include /com-install/com-install-before-begin.md %}
* [Configure TLS authentication](/docs/community/com-config-auth/com-config-tls-auth)

## Step 1 - create group permissions file

* CD to `~/featurebase/opt`
* Create the file with `touch permissions.yaml`

## Step 2 - add the permissions

* Edit  `~/featurebase/opt/permissions.yaml` then insert the following settings:

```
user-groups:
"<group-id1>":
    "<index1>": "<write>"
    "<index2>": "<read>"
"<group-id2>":
    "<index1>": "<read>"
admin: "<groupd-id3>
```

## Step 3 - edit the groups according to those created in Azure AD

THIS IS A GUESS! HELP ME OBI-DEV, YOU'RE MY ONLY HOPE!
