---
title: Build FeatureBase Community from source
layout: default
parent: Community
nav_order: 10
---

You can build FeatureBase community from Github source files.

## Before you begin

* [Install go using the instructions on the go site](https://go.dev/doc/install){:target="_blank"}
* [Login to GitHub](https://github.com/login){:target="_blank"}
* [Generate an SSH key on your environment](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent){:target="_blank"}
* [Add the SSH key to your GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account){:target="_blank"}
* [Open the FeatureBase Community GitHub repository](https://github.com/FeatureBaseDB/featurebase){:target="_blank"}

## Step one: Download the FeatureBase Community repository

* Download the repository as a `.zip` file then extract, OR
* Clone the repository

## Step two: compile the FeatureBase binaries

* Open a CLI then CD to the `/featurebase` directory
* Run the following command:

```
make install #THIS IS WRONG OR THE PATH VARIABLE NEEDS CLARIFYING
```

## Step three: compile ingester binaries

* CD to `/featurebase/idk`
* Complie the ingester binaries:

```
make install #THIS IS WRONG OR THE PATH VARIABLE NEEDS CLARIFYING
```

## Next step

* [Setup the FeatureBase directory]

<!-- Original content from featurebase repo README

In the featurebase directory, run make install to compile the FeatureBase server binary.

By default, it will be installed in the go/bin directory.

In the idk directory, run make install to compile the ingester binaries. By default, they will be installed in the go/bin directory.

Run featurebase server --handler.allowed-origins=http://localhost:3000 to run FeatureBase server with default settings (learn more about configuring FeatureBase at the link below)

The --handler.allowed-origins parameter allows the standalone web UI to talk to the server; this can be omitted if the web UI is not needed.
Run curl localhost:10101/status to verify the server is running and accessible.
--->
