---
title: CREATE TABLE prodsale-target
layout: default
parent: SQL Examples
grand_parent: SQL guide
nav_exclude: true
---

# ALTER TABLE prodsale-target

The table `prodsale-target`:


## Before you begin
* [CREATE TABLE prodsale-target](/docs/sql-guide/examples/sql-eg-table/sql-eg-table-create-prodsale-target)
* [ALTER TABLE statement](/docs/sql-guide/statements/statement-table-alter)


MODIFY THESE TO SUIT THE TABLE

### ADD `stock` column to `products` table

```
ALTER TABLE products ADD stock int;
```

### ADD `Hobbies` column to `skillset` table
```
ALTER TABLE skillset ADD Hobbies string;
```

### DROP `Hobbies` column from `skillset` table

```
ALTER TABLE skillset DROP Hobbies;
```




## Next step

* [INSERT INTO cosvec-target](/docs/sql-guide/examples/sql-eg-insert/sql-eg-insert-cosvec-target)
