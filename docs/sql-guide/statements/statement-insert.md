---
title: INSERT
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 12
---

# INSERT statement

`INSERT` or `REPLACE` multiple rows of data into existing columns in a FeatureBase table.

## BNF diagrams

![expr](/assets/images/sql-guide/insert_stmt.svg)

### column_list
![expr](/assets/images/sql-guide/column_list.svg)

{% include /tips/tip-show-table-for-structure.md %}

### value_list
![expr](/assets/images/sql-guide/value_list.svg)

## Syntax

```
INSERT INTO
  table_name [(column_list)]
  VALUES
      {(value_list),...};
```

## Arguments

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| table_name | Target table name | Yes |  |
| column_list | List of columns which must include the `_id` column | Optional | FeatureBase assumes values to be inserted into existing columns if omitted |
| value_list | The list of constants and/or functions joined by operators, or a subquery to be inserted into the column. | Yes | [Value list additional](#value-list-additional) |

## Additional information

### Limitations

The `INSERT` statement has the following limitations:

| Limitation | Example | Result |
|---|---|---|
| Number of values to INSERT must match the number of columns in `column_list` | `INSERT INTO productnames (_id, products, sales)` VALUES (1, 'FeatureBase') | Run fails with error |
| Values in rows with duplicate `_id` keys are overwritten | `INSERT INTO productnames (_id, products, sales) VALUES (1, 'FeatureBase', 2468121), (1, 'Pilosa', 132940);` | Second row overwrites the first |
| Null values in rows with duplicate `_id` keys are ignored | `INSERT INTO competitors (_id, competitor) VALUES (1, 'BitQuick'), (1, NULL)` | NULL ignored |

### Value assignment

There are special assignments for certain literal values.

| Literal Value | Target Data Type | Result | Additional information |
|---|---|---|---|
| `,'',` | `string`| `''` (empty string) | |
| `,NULL,`(case insensitive) | All unless explicitly listed | `NULL`| |
| `[]` | `idset` <br/>`stringset` | `[]` (empty set) | Stores an empty set for new records and existing `NULL` records. Keeps existing values in set otherwise |
| `{}` | `idsetq`<br/>`stringsetq` | Curly brackets surround each datestamp and value to be inserted into the array | May also be used for vector arrays |

{% include /sql-guide/timequantum-timestamp-summary.md %}

## UPDATE/REPLACE behavior

{% include /sql-guide/update_behavior.md %}

## Examples

{% include /sql-guide/sql-eg-insert-statements.md %}

## Further information

* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)
* [STRINGSETQ data type](/docs/sql-guide/data-types/data-type-stringsetq)
