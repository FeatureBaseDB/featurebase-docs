FeatureBase ingest uses UPSERT behavior, but the ways a value updates varies depending on the data type.

| Literal Value | Target Data Type | Result |
|---|---|---|
| Same data type  | All unless explicitly listed | Replace existing value with literal value |
| STRING literal  | `stringset` | Add new value to existing set of values if it does not exist |
| STRING literal | `stringsetq` | Add new value to existing set of values if it does not exist or update associated timestamp and views if value does exist |
| INT literal | `idset` | Add new value to existing set of values if it does not exist |
| INT literal | `idsetq` | Add new value to existing set of values if it does not exist or update associated timestamp and views if value does exist |
| `,NULL,` | All unless explicitly listed | Set to `NULL` |
| `,[],` | `stringset` <br/>`idset` <br/>`stringsetq` <br/>`idsetq` | Keep existing set of values or set to `[]` (empty set) if existing set is `NULL` |
