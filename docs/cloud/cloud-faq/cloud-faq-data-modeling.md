---
title: Data modeling low-cardinality data
layout: default
parent: Frequently Asked Questions
---

# Data modeling low-cardinality data
{: .no_toc }

In a traditional database, low cardinality data is typically normalized into separate tables and keys are used to maintain the relationships.

This FAQ guides you through:
* selecting the best unique identifier for each row of data
* CSV structure
* SQL statements to create a target table and read data from the CSV file
* querying the data

{% include page-toc.md %}

## Before you begin

* [Learn about data cardinality](/docs/cloud/cloud-faq/cloud-faq-data-cardinality)

## Sample data

| Species | Vertebrae | Captivity |
|---|---|---|
| Manatee | Yes | 3 |
| Sea Horse | Yes | 956 |
| Koala | Yes | 19 |
| Starfish | No | 20 |

## Which unique identifier should I choose?

Each row in a FeatureBase table needs a unique identifier. This can be an `ID` (numeric) or `STRING` data type.

{: .important}
>A choice of `STRING` unique identifier will increase your disk requirements.
>* [Learn how data is encoded by FeatureBase](/docs/cloud/cloud-faq/cloud-faq-bitmaps)

The choice of unique identifier helps reduce the number of rows to be ingested, which then increases the speed of your queries.

In this example, `Vertebrae` is the best choice for unique identifier because it reduces four rows to two:

| Vertebrae | Species |
|---|---|
| yes | Manatee, Sea Horse, Koala |
| no | Starfish |

## Next step

* [CREATE TABLE myspecies](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-myspecies)
