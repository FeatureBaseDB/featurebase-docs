---
title: fbsql output flags
layout: default
parent: CLI SQL tool
grand_parent: Tools
nav_order: 13
---

# fbsql SQL Query output formatting reference

`PSET` (Print Set) meta-commands can be run before SQL queries to alter default output formatting.

## Before you begin

{% include /fbsql/fbsql-before-begin.md %}
* [Learn how to run SQL queries with fbsql](/docs/tools/fbsql/fbsql-running-sql)
{% include /fbsql/fb-db-create.md %}
{% include /fbsql/fbsql-help-quit.md %}

## Syntax

```
[ (<pset-prefix>)
  [border [0 | 1 | 2 | 3]] |
  [format [aligned | csv]] |
  [location ['<tz-identifier>']] |
  [t | tuples_only]
]
```

## PSET prefix

PSET flags can be executed from the CLI or fbsql interface:

| Interface | Prefix | Structure | Example |
|---|---|---|---|
| CLI | `fbsql [-P|--pset] <pset-meta-commands>` | PSET output flags structured as `flag="value"` | `fbsql --P border="1"` |
| fbsql | `\pset <pset-meta-commands>` | Valid sequence of PSET output flag, argument and value if required | `\pset border 2` |

## PSET output flags

| Flags | Description | Default | Additional information |
|---|---|---|---|
| `border [0 | 1 | 2 | 3]` | Border for table output | 1 | [PSET border values](#pset-query-border-values) |
| `format [aligned | csv]` | Toggle query result format from column, row format to RFC 4180 standard CSV format | Aligned | [Query output format](#pset-query-result-orientation) |
| `location ['<tz-identifier>']` | Location for query result timestamps | local time zone | [Timezone identifier](#pset-time-zone-identifier)
| `[t | tuples_only]` | Toggle storage of multiple values in a single variable. | off | [Tuples additional](#pset-tuples) |

## Additional information

### PSET defaults

```
border      1
expanded    off
format      aligned
location    Local
tuples_only off
```

### PSET query border values

| Value | Table border | Additional information |
|---|---|---|
| 0 | None | Default |
| 1 | Internal dividing lines |  |
| 2 | Table frame |  |
| 3 | Latex format dividing lines between rows if Add latex format dividing lines between rows | Requires Latex |

### PSET query result orientation

{: .note}
`\x [on | off]` can also be used to change result orientation

| Value | Column name | Data |
|---|---|
| on | Left column | Right column |
| off | Top row | Bottom rows |

### PSET CSV output format

* Titles and footers are not printed.
* Header line with column names generated when `tuples_only` parameter is `off`
* End of line characters are system-dependent:

| OS | Description |EOL character |
|---|---|---|
| Linux<br/>MacOS | Single new-line character | `\n` |
| Windows | Carriage return and newline sequence |`\r\n` |

### PSET time-zone identifier

The optional time-zone can be set as follows:

| `<tz identifier>` | Description | Further information |
|---|---|---|
| `<none>` | Local time |  |
| `UTC` | UTC time |  |
| `region/city` | Region and city UTC offset | [UTC region/city offset values](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones){:target="_blank"}

### PSET tuples

`tuples_only` toggles relates to `output CSV`

| Output | Query output |
|---|---|
| Regular | * CSV column headers<br/>* titles<br/>* Various footers |
| tuples_only | Table data |

## Examples


### Change query result orientation

```
\pset expanded on
```

Select statement:
```sql
select * from products;
```

Output:
```sql
 _id      | 1
 prodlist | pen
 price    | 2.50
 stock    | NULL
 _id      | 2
 prodlist | pencil
 price    | 0.50
 stock    | NULL
 _id      | 3
 prodlist | playpen
 price    | 52.50
 stock    | NULL
 _id      | 4
 prodlist | gold-plated earplugs
 price    | 122.50
 stock    | NULL
```

### Change fbsql time-zone

```
\pset location 'Australia/Melbourne'
```
