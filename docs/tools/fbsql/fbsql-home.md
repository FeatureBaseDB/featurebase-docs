---
title: fbsql
layout: default
parent: Tools
has_children: false
nav_order: 1
has_toc: false
---

# fbsql

FeatureBase interactive terminal.

## Description

fbsql is a terminal-based front-end to FeatureBase. It enables you to type in queries interactively, issue them to FeatureBase, and see the query results. Alternatively, input can be from a file or from command line arguments. In addition, fbsql provides a number of meta-commands and various shell-like features to facilitate writing scripts and automating a wide variety of tasks.

## Options

```shell
-c command
--command=command
```

Specifies that fbsql is to execute the given command string, **command**. This option can be repeated and combined with the `-f` option. All `-c` options will be processed before all `-f` options are processed. When either `-c` or `-f` is specified, fbsql does not read commands from standard input; instead it terminates after processing all the `-c` and `-f` options in sequence.

```shell
--db=dbname
```

Specifies the name of the database to connect to.

```shell
-f filename
--file=filename
```

Read commands from the file **filename**, rather than standard input. This option can be repeated with the `-c` option. All `-c` options will be processed before all `-f` options are processed. When either `-c` or `-f` is specified, fbsql does not read commands from standard input; instead it terminates after processing all the `-c` and `-f` options in sequence. Except for that, this option is largely equivalent to the meta-command `\i`.

## Usage


### Connecting to a Database


### Meta-Commands

```shell
\c or \connect [ dbname ]
```

Establishes a new connection to a FeatureBase database.

```shell
\cd [ directory ]
```

Changes the current working directory to directory. Without argument, changes to the current user's home directory.