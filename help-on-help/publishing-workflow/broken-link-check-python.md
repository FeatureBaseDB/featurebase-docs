# Mac -- dead_link_seeker.py

The script can be run from any machine with Python and its dependencies installed.


## What you're looking for

* Any link that is broken or unavailable

## False positives

Some links won't resolve regardless:
* External sites
* Email addresses
* Images without <alt> tags

TIP: Add false positives to the `dead_link_seeker.py` `false_postitive` list at the end of the file.

## Before you begin

* [Build FeatureBase-docs locally](https://github.com/FeatureBaseDB/featurebase-docs/tree/docs-195-help-on-help/help-on-help/local-build)
* [Install Python](https://www.python.org/downloads/)

## Install dependecies

The script requires `urllib`, `collections` and `HTMLParser` packages

## Run dead_link_seeker.py

```python
python dead_link_seeker.py {address} [v]
```

Arguments:

| Argument | Description | Example |
|---|---|---|
| address | local or remote address | http://127.0.0.1:4000/<br/>http://docs.featurebase.com/ |
| v | verbose mode |
