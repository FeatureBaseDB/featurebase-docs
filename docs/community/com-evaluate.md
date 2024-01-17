---
title: Evaluate FeatureBase Community
layout: default
parent: Community
nav_order: 5
---

# How do I evaluate FeatureBase?

Use these instructions to import a one billion row database you can use to prove our claims about FeatureBase.

{% include /page-toc.md %}

## Before you begin

* [Read "Breaking the latency floor" a whitepaper that explains FeatureBase](https://www.featurebase.com/blog/breaking-the-latency-floor-white-paper){:target="_blank"}
{% include /com-install/com-install-before-begin.md %}

## Step 1 - download the sample database

* Open a new CLI on your FeatureBase server, then create a new directory:
```sh
mkdir ~/sample_backup
```
* CD to the backup directory, then download the file:
```sh
wget https://se-public-datasets.s3.us-east-2.amazonaws.com/cseg0_backup.tar.gz
```

* Decompress the backup:
```sh
tar -zxvf ~/Downloads/cseg0_backup.tar.gz -C ~/sample-backup
```

## Step 2 - restore the sample database

* CD to `featurebase/opt` to run the restore command:
```sh
featurebase restore --host localhost:10101 -s ~/sample-backup/
```

## Next step

* [Run queries on one billion records](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-sample-db)
