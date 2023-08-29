---
title: fbsql output flags
layout: default
parent: CLI SQL tool
grand_parent: Tools
nav_order: 12
---

# fbsql output flags reference

fbsql output can be configured from the command-line or fbsql interface.

## Before you begin

{% include /fbsql/fbsql-before-begin.md %}
{% include /fbsql/fb-db-create.md %}
{% include /fbsql/fbsql-help-quit.md %}

## Syntax

```
(<meta-prefix>)
  [--history-path="<directory-name>"] |
  [cd [<directory-name>]] |
  [[i|include] <filename.sql>]
  [[o | out] <query-output-filename>] |
  [qecho <text>] |
  [warn <text>]
]
```

{% include /fbsql/fbsql-prefix-meta-flags.md %}

## History logs

| Flag | Description | Default |
|---|---|---|
| `--history-path="<directory-name>"` | Save CLI and fbsql interface execution history to new folder | `<user-home>.featurebase/fbsql_history` |

## File output

| Flag | Description | Additional information |
|---|---|---|
| `cd [<directory-name>]` | Set fbsql file directory to $home or specified directory | Default is Directory fbsql started |
{% include /fbsql/fbsql-interface-run-file-content.md %}

## Write text to output

| Flag | Description |
|---|---|
| `[o | out] <query-output-filename>` | Define existing file to output query results |
| `echo <text>` | Output `<text>` to fbsql interface |
| `qecho <text>` | Output `<text>` to file defined by `\[o|output <output-filename>]` |
| `warn <text>` | Output `<text>` to fbsql standard error channel |

## Additional information

{% include /fbsql/fbsql-flags-execution-extra.md %}

{% include /fbsql/fbsql-query-buffer-extra.md %}

## Further information

* [PSET SQL query output formatting reference](/docs/tools/fbsql/fbsql-query-output-format)
* [Learn about RFC-4180 quoting rules](https://www.rfc-editor.org/rfc/rfc4180){:target="_blank"}
* [Create products table](/docs/sql-guide/statements/statement-table-create#create-table-with-decimal-data-type)
