---
title: Install in terminal
layout: default
parent: Community
nav_order: 5
---

# Install FeatureBase on the command line

These instructions explain the steps to install FeatureBase Community exclusively via the command line on:

* Linux
* MacOS
* Windows Subsystem for Linux

## Before you begin

Windows users should:
* [Install Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install){:target="_blank"}
You can also follow these instructions to install Ubuntu linux
* [Learn how to setup the Windows Subsystem for Ubuntu Linux](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview){:target="_blank"}

* Setup Git and SSH keys

## Step 1 - Open FeatureBase releases

* Open [FeatureBase releases on GitHub](https://github.com/FeatureBaseDB/FeatureBase/releases){:target="_blank"}
* Make a note of the release version for your system

```
featurebase-v<version>-[darwin|linux]-[arm-amd]64.tar.gz
```

## Step 2 - Download and untar installer

* Open a terminal and create a FeatureBase directory

```
mkdir featurebase
```

* CD to the directory then enter the following command, making sure to change the <version>, and choose appropriate values for your operating system and processor type.

```
curl -L https://github.com/FeatureBaseDB/featurebase/releases/download/v<version>/featurebase-v<version>-[darwin|linux]-[arm|amd]64.tar.gz -o featurebase.tgz
```

## Step 3 - setup the folders
