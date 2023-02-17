This table provides mapping between [FeatureBase SQL data types](/docs/sql-guide/data-types/data-types-home) and internal data types used by the application for configuring ingestion, API calls, etc.

| General data type | FeatureBase SQL data type | Internal data type |
|---|---|---|
| boolean | [bool](/docs/sql-guide/data-types/data-type-bool) | bool |
| integer | [int](/docs/sql-guide/data-types/data-type-int) | int |
| decimal | [decimal](/docs/sql-guide/data-types/data-type-decimal) | decimal |
| <primary-key> | [id](/docs/sql-guide/data-types/data-type-id) | mutex |
| | [idset](/docs/sql-guide/data-types/data-type-idset) | set |
| string | [string](/docs/sql-guide/data-types/data-type-string) | keyed mutex |
| | [stringset](/docs/sql-guide/data-types/data-type-stringset) | keyed set |
| timestamp | [timestamp](/docs/sql-guide/data-types/data-type-timestamp) | timestamp |
