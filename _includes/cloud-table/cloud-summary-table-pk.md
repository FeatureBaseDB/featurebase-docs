The `_id` column in each table represents the primary key.

| Intended key | UI type | SQL data type | Disk utilization (no data) | Additional information |
|---|---|---|---|---|
| Positive integer | Number | [`ID`](/docs/sql-guide/data-types/data-type-id) | 0.2MB | Faster query speed |
| Alphanumeric | String | [`STRING`](/docs/sql-guide/data-types/data-type-string) | 25.36MB | Requires new BoltDB which accounts for larger disk utilization |
