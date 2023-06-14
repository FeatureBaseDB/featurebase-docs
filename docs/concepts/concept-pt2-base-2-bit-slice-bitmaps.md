---
title: Part 2 - base-2 bit-slice bitmaps
layout: default
parent: Bitmap index overview
grand_parent: Concepts
nav_order: 2
---

# Part 2 - FeatureBase base-2 bit-sliced bitmaps
{: .no_toc }

{% include /concepts/concept-bitmap-pt1-summary.md %}

{% include /concepts/concept-bitmap-pt2-summary.md %}

{% include page-toc.md %}

## Before you begin

* [Part 1 - Bitmap indexes and equality encoding data](/docs/concepts/concept-pt1-bitmap-index)

## Sample data

Part 1 and 2 use the following sample data for examples:

{% include /concepts/concept-eg-species-table-data.md %}

The `Species` and `Captivity` data is to be imported to FeatureBase.

## Step 1 - convert `Captivity` integer values to base-2

The `Captivity` data can be converted to binary (base-2) as follows:

| Species | Captivity |
|---|---|
| Manatee | 011 |
| Sea Horse | 1110111100 |
| Koala | 10011 |
| Starfish | 10100 |

## Step 2 - Bit slicing the integer values

Bit slicing or Bit Plane slicing converts each binary value into an array of bits.

{% include /concepts/concept-eg-bit-slice-species-captive-table.md %}

## Step 3 - Compressing the data before inserting to FeatureBase

Roaring Bitmap compression is applied to the final bitmaps which makes computation faster. This involves breaking large sets of integers into containers of:
* 2^16 integers, or
* 65536 bits

The resulting data is inserted into FeatureBase.

## Further information

* [Learn about Roaring Bitmaps](https://roaringbitmap.org/about/)

<!--
Content based on:
* https://www.featurebase.com/blog/bitmaps-making-real-time-analytics-real
* https://www.featurebase.com/blog/range-encoded-bitmaps
-->