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

## Install FeatureBase on Linux

Linux install files have the following filename structure:

```
featurebase-v<version>-linux-<architecture>.tar.gz
```

Where
* <version> is the version number
* <architecture> is AMD64 or ARM64

### Step 1: Download FeatureBase release

You can download the release from a web browser or open a CLI and enter the following command with suitable alterations:

```
wget https://github.com/FeatureBaseDB/featurebase/releases/download/v<version>/featurebase-v<version>-linux-<architecture>.tar.gz

```

### Step 2: Extract files

{% include /com-install/com-install-linux-source.md %}

## Next step

* [Startup and connect to FeatureBase](/docs/community/com-startup-connect)

## Further information

* [Learn how to configure the Linux host system](/docs/community/old-setup/old-hostsystem)
