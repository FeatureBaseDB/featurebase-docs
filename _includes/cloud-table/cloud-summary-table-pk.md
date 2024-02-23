The `_id` column in each table represents the primary key and supports two data types:

| Data type | Description | Example | Advantage | Disadvantage | Example |
|---|---|---|---|---|
| [`ID` data type](/docs/sql-guide/data-types/data-type-id) | Contiguous, sequential blocks of positive integers | 7,8,9,10,11,12,...20,21,22,23,24,... | Faster queries | **Warning** Issues with performance and storage for non-contiguous values |
| [`String` data type](/docs/sql-guide/data-types/data-type-string) | String primary keys can be supplied in any order | "a23", "s93kk", "h82k", "2023-02-10",... | Automatically mapped to blocks of contiguous integers | Higher storage and performance costs |
