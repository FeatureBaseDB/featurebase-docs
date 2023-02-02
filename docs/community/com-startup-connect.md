---
title: Startup & connect
layout: default
parent: Community
nav_order: 4
---

# How do I startup and connect to FeatureBase Community?

These instructions explain how to run FeatureBase Community after you’ve installed on the target system.

{% include /page-toc.md %}

{: .note }
FeatureBase does not currently run on Mac Safari

## Before you begin

* Learn about [FeatureBase Community](/docs/community/com-home)
* Install FeatureBase on the system:
  * [Install FeatureBase on Linux](/docs/community/com-install-linux)
  * [Install FeatureBase on Mac](/docs/community/com-install-mac)
  * [Install FeatureBase on Windows](/docs/community/com-install-windows)
* Login to your system

{: .note}
FeatureBase Community does not currently support Apple Safari. Install Mozilla Firefox or Google Chrome on your system instead.

## How do I start the FeatureBase Community server?

*  Open a terminal window.
*  cd to the `/opt` directory:

```
cd ~/featurebase/opt
```

## Start the FeatureBase Community server

* Start the server
```
./featurebase server [--sql.endpoint-enabled]
```

{: .note}
`--sql.endpoint-enabled` allows you to run SQL commands in the terminal.

## How do I connect to FeatureBase community?

FeatureBase Community is available by default at:

```
http://localhost:10101/
```

## Troubleshooting

* [Issue: FeatureBase Community won't startup on Mac](/docs/community/com-troubleshooting/com-issue-mac)
