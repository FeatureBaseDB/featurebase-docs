---
title: Serverless limitations
layout: default
parent: Cloud troubleshooting
grand_parent: Cloud
nav_order: 4
---
{% include /serverless/serverless-preview-warning.md %}

# Issue - Known limitations of serverless


-   Some SQL functionality does not work:  
    -   `GROUP BY` on [IDSET](/docs/sql-guide/data-types/data-type-idset) and [STRINGSET](/docs/sql-guide/data-types/data-type-stringset) data types  
    -   `PERCENTILE`  
    -   `HAVING`  
    -   [IDSETQ](/docs/sql-guide/data-types/data-type-idsetq) and [STRINGSETQ](/docs/sql-guide/data-types/data-type-stringsetq) data types cannot be ingested
    -   `TOP`
    -   `LIMIT`   
-   There is no backup nor restore (there is a snapshot store and write-logger that holds persistent data)
{% include /serverless/serverless-worker-shape.md %}
{% include /serverless/serverless-worker-limits.md %}

## Cause

FeatureBase Serverless is in preview.

## Solution

There are no solutions to these limitations, but they are being resolved by the FeatureBase team constantly, so make sure to check this page for the updated list of limitations.

## Further information

* {% include contact-support.md %} to discuss FeatureBase serverless.
* [Serverless home page](/docs/cloud/serverless)