# Checking for broken links

It's important to check for broken links **before** committing changes and creating a Pull Request.

There are two methods:

* All systems -- dead_link_seeker.py
* PC/Linux -- check-links.sh

## Mac -- dead_link_seeker.py

The script can be run from any machine with Python and its dependencies installed.

### Before you begin

* [Install Python](https://www.python.org/downloads/)

### Install dependecies

The script requires `urllib`, `collections` and `HTMLParser` packages

### Run dead_link_seeker.py

```python
python dead_link_seeker.py {address} [v]
```

Arguments:

| Argument | Description | Example |
|---|---|---|
| address | local or remote address | http://127.0.0.1:4000/<br/>http://docs.featurebase.com/ |
| v | verbose mode |

## PC/Linux -- check-links.sh

`htmlproofer` is a Ruby Gem that's included in `gemfile.lock`

The `check-links.sh` script can be run locally on PC or Linux machines.

```
bash check-links.sh
```

## False positives

When testing on a local build the following will appear as false positives:

* External sites
* Email addresses
* Images without <alt> tags

TIP: Add false positives to the `dead_link_seeker.py` `false_postitive` list at the end of the file.








## Broken link checker

* html-proofer has been added to `Gemfile`
* load for the first time on a repository by running `bundle` at the command line.

Then run the broken link checker using the batch file:

```
bash check-links.sh
```

NOTE: It's important to fix internal links. External links will be reported as broken, but these need to be tested manually.

* html-proofer added to `Gemfile`
