### TIMEQUANTUM

{: .important}
Use the `TTL` constraint to reduce database storage and costs related to the `TIMEQUANTUM` constraint.

TIMEQUANTUM queries allow users to perform low-latency range queries unless the query and time quantum is mismatched. For example:
* Querying `d` when TIMEQUANTUM is set to `YM`

TIMEQUANTUM is defined with one or more sequential time units. For example:
* YM is valid
* YH is invalid

TIMEQUANTUM views are not deleted for when TTL is set to `0s` (the default)
