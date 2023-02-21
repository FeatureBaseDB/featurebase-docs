# HTMLproofer gemfile

This approach is suitable for PC and Docker.

## What you're looking for

* Any link that is broken or unavailable

## False positives

Some links won't resolve regardless:
* External sites
* Email addresses
* Images without <alt> tags

## Before you begin

* [Build FeatureBase-docs locally](/help-on-help/local-build)

## Run htmlproofer on the command line

* Open a terminal and CD to the `/_site` directory
* Run this command:

```
exec htmlproofer
```
