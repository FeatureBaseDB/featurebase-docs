### TTL (Time To Live)

NOTE: FeatureBase recommends using a TTL of `1h` or more to improve results.

* TTL enables the deletion of time views where a time range exceeds the stated Time To Live.
* The default TTL of `0s` indicates TIMEQUANTUM views will not be deleted.
* TTL runs:
  * when FeatureBase starts and every hour to make view deletion consistent
  * are not guaranteed to run at a specific time
* `error: unknown unit` is generated if an incorrect value is used (e.g., TTL is set to `60second`)

* TTL should not be used if you require complete and consistent historical data.

### TTL order of events

This example demonstrates the deletion dates of three column views where TTL is set to `30d`

| TIMEQUANTUM value | Timestamp | `TTL` deletion date | Description |
|---|---|---|---|
| `TIMEQUANTUM 'Y'`| 2022 | 2023-01-30 | TTL assumes date is 2022-12-31 |
| `TIMEQUANTUM 'YM'`| 2022-09 | 2022-10-30 | TTL assumes date is 09-30 |
| `TIMEQUANTUM 'YMD' | 2022-09-02 | 2022-10-02 | Deletion after 30 days as intended |
