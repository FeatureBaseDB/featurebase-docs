---
title: CREATE TABLE products-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# CREATE TABLE prodsale-target

The table `products-target` is required for an `INSERT` statement, and contains:


* an ID unique identifier
* STRING and VECTOR data type columns

## Before you begin
* [CREATE TABLE examples](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-home#create-table-examples)
* [CREATE TABLE statement](/docs/sql-guide/statements/statement-table-create)
* [ID data type](/docs/sql-guide/data-types/data-type-id)
* [STRING data type](/docs/sql-guide/data-types/data-type-string)
* [VECTOR data type](/docs/sql-guide/data-types/data-type-vector)

## CREATE TABLE statement

```sql
create table
  IF NOT EXISTS
  prodsale-target(
    _id id,
    item string,
    price decimal(2)
    stock int
  )
  ;
```

## Next step

* [INSERT INTO cosvec-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-cosvec-target)
