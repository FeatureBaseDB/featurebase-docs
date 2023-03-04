---
title: fbsql
layout: default
parent: Tools
has_children: true
nav_order: 1
has_toc: false
---

# fbsql

FeatureBase interactive terminal.

## Description

fbsql is a terminal-based front-end to FeatureBase. It enables you to type in queries interactively, issue them to FeatureBase, and see the query results. Alternatively, input can be from a file or from command line arguments. In addition, fbsql provides a number of meta-commands and various shell-like features to facilitate writing scripts and automating a wide variety of tasks.

## Options

```shell
--client-id=client-id
```

Cognito Client ID for FeatureBase Cloud access.

```shell
-c "command"
--command='command'
```

Specifies that fbsql is to execute the given command string (enclosed in either single or double quotes), **command**. This option can be repeated and combined with the `-f` option. All `-c` options will be processed before all `-f` options are processed. When either `-c` or `-f` is specified, fbsql does not read commands from standard input; instead it terminates after processing all the `-c` and `-f` options in sequence.

```shell
--config=filename
```

Configuration file to read from.

```shell
-d=dbname
--dbname=dbname
```

Specifies the name of the database to connect to.

```shell
--email=emailaddress
```

Email address for FeatureBase Cloud access.

```shell
-f filename
--file=filename
```

Read commands from the file **filename**, rather than standard input. This option can be repeated with the `-c` option. All `-c` options will be processed before all `-f` options are processed. When either `-c` or `-f` is specified, fbsql does not read commands from standard input; instead it terminates after processing all the `-c` and `-f` options in sequence. Except for that, this option is largely equivalent to the meta-command `\i`.

```shell
--history-path=filename
```

File in which to store command history. This defaults to `.featurebase/fbsql_history` in the current user's home directory.

```shell
--host=hostname
```

Specifies the host name of the machine on which the server is running. This can be a URL to a cloud instance of FeatureBase. In that case, the value of **hostname** might be something like `https://query.featurebase.com`.

```shell
--kafka-config=filename
```

Run fbsql as a Kafka consumer in non-interactive mode. Based on the configuration provided in **filename**, fbsql will read messages from a Kafka topic and submit them to FeatureBase via BULK INSERT statements. In this mode, fbsql processes messages until terminated by the user.

For more information, see [Kafka](/docs/tools/fbsql/fbsql-kafka).

```shell
--org-id=organization
```

Specified the Organization ID to use. Organizations are a concept used in FeatureBase Cloud, and in that case they are determined automatically based on user authorization. They are exposed here in case on-prem installations want to mimic that functionality.

```shell
--password=password
```

Password for FeatureBase Cloud access.

```shell
-p=port
--port=port
```

Specifies the TCP port or the local Unix-domain socket file extension on which FeatureBase is listening for connections.

```shell
--region=region
```

Cloud region for FeatureBase Cloud access (e.g. us-east-2).

## Usage

### Meta-Commands

```shell
\c or \connect [ dbname ]
```

Establishes a new connection to a FeatureBase database.

```shell
\cd [ directory ]
```

Changes the current working directory to directory. Without argument, changes to the current user's home directory.

```shell
\d
```

List tables.

```shell
\dt
```

List tables.

```shell
\dv
```

List views.

```shell
\echo text
```

Prints the argument to standard output, followed by a newline.

```shell
\i or \include filename
```

Reads input from the file filename and executes it as though it had been typed on the keyboard.

```shell
\l or \list
```

List the databases on the server

```shell
\o or \out [ filename ]
```

Arranges to save future query results to the file **filename**.

```shell
\p or \print
```

Print the current query buffer to the standard output. If the current query buffer is empty, the most recently executed query is printed instead.

```shell
\pset [ option [ value ] ]
```

This command sets options affecting the output of query result tables. option indicates which option is to be set. The semantics of value vary depending on the selected option. For some options, omitting value causes the option to be toggled or unset, as described under the particular option. If no such behavior is mentioned, then omitting value just results in the current setting being displayed.

\pset without any arguments displays the current status of all printing options.

Adjustable printing options are:

```
border
```

The **value** must be a number. In general, the higher the number the more borders and lines the tables will have, but details depend on the particular format. In most formats only values 0 (no border), 1 (internal dividing lines), and 2 (table frame) make sense, and values above 2 will be treated the same as border = 2. The latex and latex-longtable formats additionally allow a value of 3 to add dividing lines between data rows.

```
expanded (or x)
```

If **value** is specified it must be either on or off, which will enable or disable expanded mode, or auto. If value is omitted the command toggles between the on and off settings. When expanded mode is enabled, query results are displayed in two columns, with the column name on the left and the data on the right. This mode is useful if the data wouldn't fit on the screen in the normal “horizontal” mode.

```
tuples_only (or t)
```

If **value** is specified it must be either on or off which will enable or disable tuples-only mode. If **value** is omitted the command toggles between regular and tuples-only output. Regular output includes extra information such as column headers, titles, and various footers. In tuples-only mode, only actual table data is shown.

```shell
\q or \quit
```

Quits the fbsql program.

```shell
\qecho text
```

This command is identical to \echo except that the output will be written to the query output channel, as set by \o.

```shell
\r or \reset
```

Resets (clears) the query buffer.

```shell
\set [ name [ value [ ... ] ] ]
```

Sets the fbsql variable **name** to **value**, or if more than one value is given, to the concatenation of all of them. If only one argument is given, the variable is set to an empty-string value. To unset a variable, use the `\unset` command.

\set without any arguments displays the names and values of all currently-set fbsql variables.

Variable names are case-sensitive.

```shell
\timing [ on | off ]
```

With a parameter, turns displaying of how long each SQL statement takes on or off. Without a parameter, toggles the display between on and off.

```shell
\unset name
```

Unsets (deletes) the fbsql variable **name**.

```shell
\w or \write filename
```

Writes the current query buffer to the file **filename**. If the current query buffer is empty, the most recently executed query is written instead.

```shell
\warn text
```

This command is identical to \echo except that the output will be written to fbsql's standard error channel, rather than standard output.

```shell
\watch [ seconds ]
```

Repeatedly execute the current query buffer until interrupted or the query fails. Wait the specified number of seconds (default 2) between executions.

If the current query buffer is empty, the most recently sent query is re-executed instead.

```shell
\x [ on | off ]
```

Sets or toggles expanded table formatting mode. As such it is equivalent to \pset expanded.

```shell
\! [ command ]
```

The **command** is simply passed literally to the shell.

