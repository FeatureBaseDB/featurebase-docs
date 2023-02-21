# Checking for broken links

It's important to check for broken links **before** committing changes and creating a Pull Request.

There are two methods:

* All systems -- dead_link_seeker.py
* PC/Linux/Docker -- htmlproofer

## Before you begin

* [Build FeatureBase-docs locally](/help-on-help/local-build)

## Python approach

Suitable for Any operating system and requires Python to be installed

* [Python broken link check for Mac or other OS](/broken-link-check)

## HTMLproofer Gem approach

* [HTMLproofer gem for PC or Docker]()

## What you're looking for

* Any link that is broken or unavailable

## False positives

Some links won't resolve regardless:
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
