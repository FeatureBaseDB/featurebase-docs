---
title: Expressions
layout: default
parent: SQL guide
---

# SQL Expressions
{: .no_toc }

{% include page-toc.md %}

## Before you begin

{% include /cloud/cloud-db-create-before-begin.md %}

### identifier
![expr](/assets/images/sql-guide/identifier.svg)

{% include /concepts/standard-naming-obj.md %}

## expr

![expr](/assets/images/sql-guide/expr.svg)

| Syntax | Example |
|---|---|
| `expr [NOT] LIKE expr` | `SELECT * from Products where Product_name LIKE pen` |
| `expr IS [NOT] null` | `SELECT * from Products where Price is null` |
| `expr [NOT] between expr AND expr` | `SELECT * from Products WHERE Price BETWEEN 10 AND 20;` |
| expr [NOT] IN ([SELECT_stmnt | expr,...]) | `Select * from Products where product_ID NOT IN (SELECT * from Sales)`<br/>`SELECT * from Products where Teacup IN (Sales, Inventory)` |

### Literals

Literals are explicitly specified fixed values that conform to a specific data type:

| String literal | BNF diagram | Further information |
|---|---|---|
| date |  | [DATE() data type](/docs/sql-guide/data-types/data-type-date)
| decimal |  | [DECIMAL() data type](/docs/sql-guide/data-types/data-type-decimal)
| set | ![expr](/assets/images/sql-guide/set_literal.svg) | [IDSET data type](/docs/sql-guide/data-types/data-type-idset)<br/>[STRINGSET data type](/docs/sql-guide/data-types/data-type-stringset) |
| string |  | [STRING data type](/docs/sql-guide/data-types/data-type-string) |
| tuple | ![expr](/assets/images/sql-guide/tuple_literal.svg) | Tuple literals are a collection of data types. |

### [table_name].column_name



### [unary_op] expr

* [Unary operators](/docs/sql-guide/operators/operators-home#)

### expr binary_op expr

* [Binary operators](/docs/sql-guide/operators/operators-home#)

### function_call

![expr](/assets/images/sql-guide/function_call.svg)

* [SQL Functions](/docs/sql-guide/functions/functions-home)

### CAST expr AS type_name

| Syntax | Example | Result |
|---|---|---|
| `CAST expr AS type_name` | `SELECT CAST (25.65 AS int);` | 25 |

* [CAST function](https://www.w3schools.com/sql/func_sqlserver_cast.asp){:target="_blank"}

### paren_select_stmt
![expr](/assets/images/sql-guide/paren_select_stmt.svg)

A SQL Statement nested within another SQL statement.

* [SELECT Statement](/docs/sql-guide/statements/statement-select)

### case_expr
![expr](/assets/images/sql-guide/case_expr.svg)

* [SQL CASE expression](https://www.w3schools.com/sql/sql_case.asp){:target="_blank"}
