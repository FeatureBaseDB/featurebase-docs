---
title: FeatureBase keygen
layout: default
parent: Community authentication
grand_parent: Community
---

# How do I generate a secret key for FeatureBase authentication?

Featurebase-keygen is a command-line application supplied with FeatureBase Community. The resulting key is:

[EXPERT INFORMATION NEEDED HERE PLEASE!

* QUERY > 128/256 encryption?
* QUERY > Is it like a standard keygen?
* QUERY > How does this differ from a standard keygen?
* QUERY > Does this relate to the TLS mutual stuff found in /com-config-tls-mutual?
* QUERY > Any other useful background information?

QUERY > I can't get this to work in a docker container. Does it REALLY exist??

]

## Before you begin

{% include /com-install/com-install-before-begin.md %}

## Generate a secret key

* Open a terminal then `CD` to the FeatureBase installation directory.
* Run the following command:

```
featurebase keygen
```

* Follow on-screen instructions to create the key.

## Further information

The FeatureBase key is used in the following circumstances:

* [Setting up TLS authentication](/docs/community/com-config-auth/com-config-tls-auth)
