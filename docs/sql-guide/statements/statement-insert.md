---
title: INSERT
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 3
---

# INSERT statement

`INSERT` or `REPLACE` multiple rows of data into existing columns in a FeatureBase table.

## BNF diagrams

![expr](/assets/images/sql-guide/insert_stmt.svg)

### column_list
![expr](/assets/images/sql-guide/column_list.svg)

### value_list
![expr](/assets/images/sql-guide/value_list.svg)

## DML syntax

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

### Value list additional

The length of the value_list must match the length of the column_list.

### Value list warning

{: .warning}
FeatureBase recommends limiting INSERT statements to **one record per key** to avoid unexpected results.

INSERT statement inconsistencies:
* may occur when a single statement contains multiple records that share the same key, and
* known to occur when a field is being set to both NULL and non-NULL values for a given key

### Value assignment

There are special assignments for certain literal values.

| Literal Value | Target Data Type | Result | Further information |
|---|---|---|---|
| `,'',` | `string`| `''` (empty string) | |
| `,NULL,`(case insensitive) | All unless explicitly listed | `NULL`| |
| `[]` | `stringset` <br/>`idset` | `[]` (empty set) | Stores an empty set for new records and existing `NULL` records. Keeps existing values in set otherwise |

## UPDATE/REPLACE behavior

{% include /sql-guide/update_behavior.md %}

## Examples

### CREATE TABLE with string data types

{% include /sql-guide/table-create-prod-sale-string-eg.md %}

### INSERT multiple records INTO `products` and `services` tables

```sql
INSERT INTO products
  (_id, prodlist, price)
  VALUES
  (1, 'pen', 2.50),
  (2, 'pencil', 0.50),
  (3, 'playpen', 52.50),
  (4, 'gold-plated earplugs', 122.50);

  INSERT INTO services
    (_id, servicelist, price)
    VALUES
    (1, 'free delivery on orders over $50', NULL),
    (2, 'local postage per item', 2.20),
    (3, 'international postage per kilo', 15.99),
    (4, 'local courier (same day to metro)', 25.00)
    (5, 'local delivery > 10 items', 2.00);
```

### INSERT value in services table

```sql
INSERT INTO services (_id, servicelist, price)
VALUES (1, 'free deliveries on orders over $50', 0.00);
```

### Overwrite existing value

```sql
INSERT INTO services (_id, servicelist, price)
VALUES (2, 'local postage per item', 2.20);
```

### CREATE TABLE with TIMEQUANTUM constraints

{% include /sql-guide/table-create-timequantum-eg.md %}

### INSERT for time quantum data types

The following statement inserts values with an associated timestamp (using either a unix time or timestamp) into `timeq`,  which has `IDSETQ` and `STRINGSETQ` data types.

```sql
INSERT INTO timeq(_id, stringsetcolq, idsetcolq)
VALUES (1, {'2018-08-31T00:00:00Z', ['A','B']}, {1676649734, [1]});
```

### CREATE TABLE with `STRINGSET` data types

{% include /sql-guide/table-create-eg-stringset-datatype.md %}

### INSERT data to `STRINGSET`

```sql
INSERT
  into myspecies (_id, species)
  values
    ('yes', ['Manatee', 'Sea Horse', 'Koala']),
    ('no', ['Starfish']);
```

## Further information

* [IDSETQ data type](/docs/sql-guide/data-types/data-type-idsetq)
* [STRINGSETQ data type](/docs/sql-guide/data-types/data-type-stringsetq)
