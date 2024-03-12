---
title: BULK INSERT
layout: default
parent: Statements
grand_parent: SQL guide
nav_order: 13
---

# BULK INSERT statement
{: .no_toc }

BULK INSERT is a SQL statement that:
* reads data from various sources,
* maps data locations and data types,
* performs optional lightweight data transformations,
* then loads the data to a table [using INSERT statements](/docs/sql-guide/statements/statement-insert)

In some cases, the data will be pre-sorted by internal FeatureBase partition before being ingested by multiple concurrent routines.

![expr](/assets/images/sql-guide/bulk_insert_steps.svg)


## Before you begin

Prepare your data source:
* file(s)
* URL(s)
* inline blob

The data source must be in one of the following formats:
* [Comma separated value (CSV) format](https://www.rfc-editor.org/rfc/rfc4180){:target="_blank"}
* [Lean about New Line Delimited JSON (NDJSON) format](https://en.wikipedia.org/wiki/JSON_streaming){:target="_blank"}
* [Learn about Apache ORC format](https://orc.apache.org/specification/){:target="_blank"}
* [Learn about Apache PARQUET format](https://parquet.apache.org/){:target="_blank"}

{% include page-toc.md %}

## BNF diagrams

![expr](/assets/images/sql-guide/bulk_insert_stmt.svg)

### Column list
![expr](/assets/images/sql-guide/column_list.svg)

{% include /tips/tip-show-table-for-structure.md %}

### Map list
![expr](/assets/images/sql-guide/map_list.svg)

### Transform clause
![expr](/assets/images/sql-guide/map_list.svg)

### With clause
![expr](/assets/images/sql-guide/bulk_insert_options.svg)
![expr](/assets/images/sql-guide/bulk_insert_option.svg)

## Syntax

```
BULK INSERT
  INTO
    <table_name> [(<column-list>)]
  MAP
    (<map-id> <data-type>,...)
  [TRANSFORM
    (expr,...)]
  FROM
    ['<URL>' | '<string-literal>']
  WITH
    [
      [BATCHSIZE <integer-value>]
      [ROWSLIMIT <integer-value>]
      [INPUT ['INLINE' | 'STREAM' | 'URL']]
      [FORMAT
        ['CSV' [HEADER_ROW] [CSV_EMPTY_STRING_AS_NULL] [CSV_NULL_AS_NULL] [NULL_AS_EMPTY_SET]] |
        ['NDJSON' [ALLOW_MISSING_VALUES] [NULL_AS_EMPTY_SET]] |
        ['PARQUET' [NULL_AS_EMPTY_SET]] |
        ['ORC' [NULL_AS_EMPTY_SET]]
      ]
      ...
    ]
```

## Arguments

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| `INSERT` | INSERT a row of data identified by an `_id` value not in the table<br/>UPDATE values in a row where the `_id` already exists | Yes | Columns not defined in the `<column-list>` are not updated |
| `<table_name>` | Name of target table | Yes |  |
| `<column-list>` | Columns belonging to `<table-name>`, starting with the `_id` column | Optional | Assumes all columns in `<table_name>` are to be updated if left blank |

## MAP clause

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| `MAP` | Comma-separated list defining each column in the <column-list> as a positive integer and data type | Yes |  |
| `<map-id>` | Corresponds to the ordinal position of each column | `_id` column is numbered `0` | Yes |  |
| `<data-type>` | The data type assigned to each column in the `CREATE TABLE` statement | Yes | [Data types](/docs/sql-guide/data-types/data-types-home) |

## TRANSFORM clause

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| `TRANSFORM` | Prefix each column integer from the `MAP` clause with the `@` symbol | Optional | [TRANSFORM examples](#transform-examples) |
| `expr` | Any valid function or operator used to manipulate values identified by `@<map-id>` | [TRANSFORM examples](#transform-examples) |

## FROM clause

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| `FROM` | A single or multi-line string literal that specifies the data source defined in the `WITH...INPUT` and `WITH...SOURCE` clauses | Yes |  |
| `'<URL>'` | One or more valid URLs that link to a data source defined in the `WITH...SOURCE` clause | Optional | Two or more URLS can be separated using whitespace or on by with the [`x` prefix to represent a string literal with newline](#) |
| `<string-literal>` | CSV or NDJSON records as a string literal. | Required for INLINE | Not supported for `FORMAT 'PARQUET'` |

## WITH clause

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| `WITH` | Pass one or more statement level options | Optional |  |

### Ingest arguments

| Argument | Description | Default | Additional information |
|---|---|---|---|
| `BATCHSIZE` | Specify the batch size of the BULK commit | `1000` | If batching not available on client, use `STREAM` instead |
| `ROWSLIMIT` | Limit the number of rows processed in a batch. |  |  |
| `CONCURRENCY` | Number of concurrent workers to ingest the data after it has been presorted | `8` | Can be used with `CSV` and `NDJSON` which can presort. Not supported for `PARQUET` and `ORC` |

### INPUT arguments

| Argument | Description | Required? | Additional information |
|---|---|---|---|
| `INPUT` | Input values must match those used in the `FROM` clause |  |  |
| `'INLINE'` | Used for data included directly from the `FROM` clause with contents of the literal read as though they were in a file.  | Required for `FROM x'records'`<br/>Not supported for `PARQUET` and `ORC` | [INLINE quotation marks](#using-inline-with-quotation-marks) |
| `'STREAM'` | `STREAM` supports a streaming payload using an HTTP multipart POST. | Optional | [BULK INSERT with STREAM](#bulk-insert-with-stream) |
| `FORMAT` | Supported data source formats are:<br/>* CSV<br/>* `NDJSON`<br/>* `ORC`<br/>* `PARQUET` | Optional | `INPUT 'INLINE'` does not support `PARQUET` or `ORC` |

### Optional data source arguments

| Argument | Data source | Description | Additional information |
|---|---|---|---|
| `ALLOW_MISSING_VALUES` | `NDJSON` | Output a `NULL` value from the `MAP` clause if the path expression fails | Optional | [NDJSON value assignment](#ndjson-data-source-value-assignment) |
| `CSV_EMPTY_STRING_AS_NULL` | `CSV` | Assign `""` value as `null` | Optional | [CSV value assignment](#csv-data-source-value-assignment) |
| `CSV_NULL_AS_NULL` | `CSV` | Assign `NULL` value as `null` | Optional | [CSV value assignment](#csv-data-source-value-assignment) |
| `HEADER_ROW` | `CSV` | Ignore the header row | Optional |  |
| `NULL_AS_EMPTY_SET` | All | `MAP` any `NULL` values from the data source to a `SET` column without error | [SET and SETQ data types](/docs/sql-guide/data-types/data-type-set-setq) |

## Additional information

{: .note}
Any variables are evaluated during execution for each row

### INPUT additional

#### String literals

{% include string-literal-def.md %}

#### CSV data source value assignment

| Literal Value | Target Data Type | Result | Additional information |
|---|---|---|---|
| `,,` or `,"",` | All unless explicitly listed | `NULL` | |
| `,,` or `,"",` | `string` | `''` (empty string) | If `WITH` clause if `CSV_EMPTY_STRING_AS_NULL` is used, the result is `NULL` |
| `,,` or `,"",` | `SET` and `SETQ` | `NULL` | if `NULL_AS_EMPTY_SET` is used, the resultant becomes `[]` (empty set) |
| `,NULL,` | All unless explicitly listed | `'NULL'` (string literal) | if `CSV_NULL_AS_NULL` is used, the result is `NULL` |

#### NDJSON data source value assignment

| Literal Value | Target Data Type | Result | Additional information |
|---|---|---|---|
| `""` | `string` | `''` (empty string) | |
| `""` | `stringset`<br/>`stringsetq` | `['']` (set with empty string member) | |
| `null` | All unless explicitly listed | `NULL` | |
| `[]` | `SET` and `SETQ` | `[]` (empty set) | |
| Value Missing () | All unless explicitly listed | `NULL` | This will only occur if using `ALLOW_MISSING_VALUES` |
| Value Missing () |`SET` and `SETQ` | `NULL` | if `NULL_AS_EMPTY_SET` is used, the resultant becomes `[]` (empty set). This will only occur if using `ALLOW_MISSING_VALUES` |

{% include /sql-guide/sql-eg-insert-bulk-statements.md %}

## Examples

### BULK INSERT using TUPLE for SETQ column

```sql
BULK INSERT INTO doctest (
  _id,
  idsetqcol,
  stringsetqcol,
  timestampcol)
MAP
  (0 ID,
  1 IDSET,
  2 STRINGSET,
  3 TIMESTAMP)
TRANSFORM(
    @0,
    TUPLE(@3,@1),
    TUPLE(@3,@2),
    @3
)
FROM x'004,456;567;678;789,this;is;the;first;row,2023-11-22T04:46:59Z'
WITH
    BATCHSIZE 1
    FORMAT 'CSV'
    input 'INLINE';
```

### TRANSFORM with operators and expressions

```sql
BULK INSERT INTO doctest (_id, zip-code, state-name)
MAP (
  0 id,
  1 INTEGER,
  2 STRING)
TRANSFORM (
    @0 + 10, -- offset the new _id value by 10
    @1,      -- pass through unchanged
    CASE     -- clean up state names
        WHEN @2 = 'Texas' then 'TX' end
        WHEN @2 = 'California' then 'CA' end
        ELSE @2
    end
)
```



<!-- COMMENTED OUT BECAUSE AS OF 2023-01-31 this is the same as INSERT

### BULK REPLACE from CSV file with TRANSFORM

```sql
bulk replace
    into insert_test (_id, int1, string1, timestamp1)
    map (0 id, 1 int, 2 string)
    transform (@0, @1, @2, current_timestamp)
from
    '/dev/queries/insert_test.csv'
with
    format 'CSV'
    input 'FILE';
```
-->
<!-- The following examples to be rolled into the new examples-->
### BULK INSERT with read from CSV file

```sql
bulk replace
    into insert_test (_id, int1, string1, timestamp1)
    map (0 id, 1 int, 2 string)
    transform (@0, @1, @2, current_timestamp)
from
    '/dev/queries/insert_test.csv'
with
    format 'CSV'
    input 'FILE';
```

### BULK INSERT with STREAM

Using input STREAM requires making an HTTP multipart form POST request. The argument to FROM may be `'*'` and all files attached to the request will be streamed in and ingested together. The fbsql CLI tool implements the multipart POST and you would use it as follows:

```sql
\file myfile.csv
\file myfile2.csv
\file myfile3.csv

bulk replace
  into insert_test (_id, int1, string1, timestamp1)
  map (0 id, 1 int, 2 string)
  transform (@0, @1, @2, current_timestamp)
  from
    '*'
  with
    format 'CSV'
    input 'STREAM';
```

This would ingest all three files in a single request.
