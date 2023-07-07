---
title: Bit-slice bitmaps
layout: default
parent: Bitmap index overview
grand_parent: Concepts
nav_order: 2
---

# FeatureBase bitmaps part 2 - Bit-sliced bitmaps
{: .no_toc }

Bit-sliced data creates a single bitmap for each power of 2. This approach means FeatureBase can represent any number in the 64-bit range (10^19) using only 64 bitmaps.

{% include page-toc.md %}

## Before you begin

* [Learn about FeatureBase bitmaps](/docs/concepts/concept-bitmaps)
* [Learn about equality encoding data in bitmaps](/docs/concepts/concept-bitmaps-standard)

## How does FeatureBase bit-slice integer data?

{% include /concepts/concept-bitmap-source-data-table.md %}

### Step 1 - convert values to base-2

Using `historical_name` as the `id` means integer values can be represented as individual base-2 values

| id | downloads |
|---|---|
| Pilosa | 10011100010000 |

| id | downloads |
|---|---|
| Molecula | 100100001011100 |

| id | downloads |
|---|---|
| FeatureBase | 1100001101010000 |

### Step 2 - Bit slicing the integer values

Bit slicing adds a column for each power of 2.

```
| id | 32768 | 16384 | 8192 | 4096 | 2048 | 1024 | 512 | 256 | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Pilosa | 0 | 0 | 1 | 0 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 0 |
```

```
| id | 32768 | 16384 | 8192 | 4096 | 2048 | 1024 | 512 | 256 | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Molecula | 0 | 0 | 1 | 0 | 0 | 1 | 0 | 0 | 0 | 0 | 1 | 0 | 1 | 1 | 1 | 0 | 0 |
```

```
| id | 32768 | 16384 | 8192 | 4096 | 2048 | 1024 | 512 | 256 | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| FeatureBase | 1 | 1 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | 1 | 0 | 1 | 0 | 0 | 0 | 0 |
```

## Step 3 - Save bitslice bitmaps

The bit-slice columns can now be saved as individual bitmaps. For example:

| id | 32768 |
|---|---|
| Pilosa | 0 |
| Molecula | 0 |
| FeatureBase | 0 |

## What data types are converted to bit-sliced bitmaps?

User data mapped to the following data types is converted to bit-sliced bitmaps:

{% include /concepts/concept-bitmap-bitslice-data-type-table.md %}

## Further information

* [Learn how FeatureBase compresses bitmaps and reduces storage overheads](/docs/concepts/concept-roaring-bitmap-format)

## Further information

* [Learn about bit-slice indexing](https://pages.cs.wisc.edu/~nil/764/DADS/36_improved-query-performance-with.pdf){:target="_blank"}