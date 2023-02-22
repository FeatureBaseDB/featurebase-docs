---
title: Install on Linux
layout: default
parent: Community
nav_order: 1
---

# How do I install FeatureBase Community on Linux?

Follow these instructions to install FeatureBase on a Linux environment.

{% include /page-toc.md %}

## Before you begin

* Learn about [FeatureBase Community](/docs/community/com-home)
* [Open the FeatureBase releases page on GitHub](https://github.com/FeatureBaseDB/FeatureBase/releases){:target="_blank"}
* [Install WGET if it is not already on your system](https://www.gnu.org/software/wget/){:target="_blank"}

## Linux installer naming convention

Linux installers have the following filename:

```
featurebase-v<version>-linux-<architecture>.tar.gz
```
Where:
* version - the version number which is also found in the file path
* architecture - AMD64 or ARM64

## Step 1 - Download FeatureBase Community

### Download from the website

* [Download from FeatureBase releases](https://github.com/FeatureBaseDB/FeatureBase/releases){:target="_blank"}

### Download using terminal

{: .note}
You can use `curl` instead of `wget` if it is installed.

* Download the release using the following syntax:

```
wget https://github.com/FeatureBaseDB/featurebase/releases/download/v<version>/featurebase-v<version>-linux-<architecture>.tar.gz
```

Where:
* version - the version number used for the file path and filename
* architecture - AMD64 or ARM64

## Step 2 - Extract files

* CD to the directory you downloaded the release
* Create a target directory where the release will be installed:

```
mkdir ~/featurebase
```

* Untar the release to the `/featurebase` directory:

```
tar xvfz featurebase-<version>-<os><architecture>.tar.gz -C ~/featurebase
```

## Step 3 - configure the `/featurebase` directory

* CD to the release directory:
```
CD ~/featurebase
```

* Move files to the `/opt` directory:

```
mv featurebase-* opt
```

* Move files to the `/idk` directory:

```
mv idk-* idk
```




{% include /com-install/com-install-linux-source.md %}

## Next step

* [Startup and connect to FeatureBase](/docs/community/com-startup-connect)

## Further information

* [Learn how to configure the Linux host system](/docs/community/old-setup/old-hostsystem)
