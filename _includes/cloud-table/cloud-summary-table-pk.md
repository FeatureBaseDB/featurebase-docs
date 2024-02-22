The `_id` column in each table represents the primary key for each column.

| UI Type | SQL data type | Data source table unique key | Disk utilization (no data) | Additional information |
|---|---|---|---|---|
| Number | [`ID`](/docs/sql-guide/data-types/data-type-id) | Positive integer | 0.2MB | Increased query speeds |
| String | [`STRING`](/docs/sql-guide/data-types/data-type-string) | String key or a combination of columns used to create a unique key | 25.36MB | System adds new BoltDB |
