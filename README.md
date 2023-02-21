# FeatureBase Docs

FeatureBase-docs is a Jekyll site and uses the *Just the Docs* gemfile theme which was setup based on the following instructions:

* [Just the docs gemfile theme](https://github.com/just-the-docs/just-the-docs-template/blob/main/README.md)

A gemfile theme:
* Can be modified with local files (e.g., stylesheets, etc)
* Automatically pulls the latest version of the theme when the site is deployed to production

## Featurebase docs help

All site documentation is found in `/help-on-help` which is available to use

* [Via the featurebase-docs repository](https://github.com/FeatureBaseDB/featurebase-docs/tree/main/help-on-help)
* When you clone the repository locally

NOTE: `/help-on-help` is explicitly excluded from the site build in the `/_config.yaml` configuration file.

Help on help is broken into the following folders:

* [Publishing workflow](https://github.com/FeatureBaseDB/featurebase-docs/tree/docs-195-help-on-help/help-on-help/publishing-workflow) -- an overview of how site changes are made, approved, staged then published
* [Building locally](https://github.com/FeatureBaseDB/featurebase-docs/tree/docs-195-help-on-help/help-on-help/local-build) -- how to build the site locally using a local version of Jekyll or with Docker
* [Style Guide](https://github.com/FeatureBaseDB/featurebase-docs/tree/docs-195-help-on-help/help-on-help/style-guide) -- How pages and content should be structured
* [Writing help](https://github.com/FeatureBaseDB/featurebase-docs/tree/docs-195-help-on-help/help-on-help/writing-help) -- How to go about planning, and writing content

Also included in the folder are source files and instructions for generating BNF diagrams used in the SQL Guide

* [Regenerate SQL SVG](https://github.com/FeatureBaseDB/featurebase-docs/tree/docs-195-help-on-help/help-on-help/regenerate-sql-svg)
