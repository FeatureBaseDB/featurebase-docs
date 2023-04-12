### TTL (Time To Live)

{: .warning}
Do not use TTL if your organization requires complete and consistent historical data.

TTL enables the deletion of time views where a time range exceeds the stated `TTL <integer><time-unit>`.

TTL runs:
* when FeatureBase starts and every hour to make view deletion consistent
* are not guaranteed to run at a specific time
