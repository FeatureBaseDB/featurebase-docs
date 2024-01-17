---
title: Evaluate FeatureBase Community
layout: default
parent: Community
nav_order: 5
---

# How do I evaluate FeatureBase?

Load a sample database of a billion rows to test FeatureBase Cloud.

{% include /page-toc.md %}

## Before you begin

* [Read "Breaking the latency floor" a whitepaper that explains FeatureBase](https://www.featurebase.com/blog/breaking-the-latency-floor-white-paper){:target="_blank"}
{% include /com-install/com-install-before-begin.md %}

## Step 1 - download the sample database

* Open a new CLI on your FeatureBase server, then create a new directory:
```sh
mkdir ~/sample_db
```
* CD to the backup directory, then download the file:
```sh
wget https://se-public-datasets.s3.us-east-2.amazonaws.com/cseg0_backup.tar.gz
```

## Step 2 - decompress the backup

{: .note}
This process may take some time to complete.

* Run this command in the `sample-db` directory:
```sh
tar -zxvf cseg0_backup.tar.gz
```

## Step 2 - restore the sample database

* CD to `featurebase/opt` to run the restore command:
```sh
featurebase restore --host localhost:10101 -s ~/sample-db/
```

## Next step

* [Run queries on one billion records](/docs/sql-guide/examples/sql-eg-select/sql-eg-select-sample-db)
