## Style Guide README

The style guide explains standards for:

* Where files are saved
* File naming
* Page YAML header
* Page purpose and layout
* Standard headings
* Custom headings
* Application icons

## File naming

* [File naming standards](/help-on-help/style-guide/file-naming)

## Page YAML header

Each help page found in `/docs` requires specifically structured YAML header content which governs what is displayed in the right navbar tree.

* [Positioning pages in navigation tree](/help-on-help/style-guide/content-nav-nesting-folder)
* [Navigation order in tree](/help-on-help/style-guide/content-nav-page-order)

## Page purpose and layout

There are seven types of page to choose from, each with a specific purpose and layout

| Purpose | Description | Example layout |
|---|---|---|
| Overviews | High level overview of concepts or functionality. Contain **NO** process or procedural steps. Ideally you will have a "parent" overview for the really high-level information, and multiple "child" overviews to drill down into more detailed content. And from there you can link to subpages listed below. | Parent overview -- `index.html`<br/> Child overview -- `/docs/cloud/cloud-databases/cloud-db-manage.md` |
| Process | A list of tasks that provide general information without delving into functionality | `/help-on-help/publishing-workflow/deployment-process.md` |
| Procedure | Specific list of functional steps to perform to complete a **single** task in a **specific** area of the application. | `/docs/cloud/cloud-tables/cloud-table-create.md` |
| Procedure series | A set of procedures that guide the user through an end-to-end use case. Constructed so individual procedures can be reused for other purposes | Community setup on Windows is a good example<br/> Part one -- `/docs/community/com-install-windows.md`<br/> Part two -- `/docs/community/com-install-linux.md` (which can **also** be performed in isolation) |
| FAQ | Frequently asked questions kept to a minimal answer and/or link to another file which contains the correct answers. These **must** be confined to a single area of functionality. Endless scroll FAQs make content hard for users to follow. | `/docs/concepts/glossary.md` |
| Issue | known issues which contain a description of the issue, the probable cause and workarounds or solutions. | Docs in `/docs/cloud/cloud-troubleshooting.md` |
| Reference | Specifically structured reference content | Docs found under `/docs/sql-guide` |

## Standard headings

We use standard headings to consistently describe content.

| Heading | Used for | Example |
|---|---|---|
| Before you begin | The ultimate goal of this heading is to tell the user:<br/>* What they need to know before moving forward<br/>* What they need to have done before they get here<br/>Ultimately this is a list of prerequisites and requirements | `/docs/community/com-startup-connect` |
| Step N - <description> | Used to gather a series of steps into a context so the user knows they must be completed before moving forward. Especially useful if a group of steps requires some explanation before they are performed |
| Further information | Related information to the content on the page which will likely include links to other FeatureBase documentation, and also external links which seem useful |
| Next step | Used for Procedure series to direct user to the next page in the sequence, and also to direct the user to something else they might choose to do (e.g., after loading data, they might want to query it) |
| Syntax | May be prefixed with DDL or other specifics, but what follows is the standard syntax used to construct commands, sql, etc. NOT BNF diagrams which are their own thing | `/docs/sql-guide/statements/statement-insert` |
| Arguments | May be called something else based on the context (e.g., Flags for CLI commands) but describe the syntax provided in a table form | `/docs/community/com-ingest/com-ingest-flags-csv` |
| Examples | Usually found in reference docs and used for real-life examples of how the command/sql is used | `/docs/sql-guide/functions/function-rtrim` |

## Custom headings

There are two kinds of custom heading:

* The page title
* Content headings that follow the **Before you begin** heading.

### Page title based on the page type

**NOTE**: Page title standards have not been fully implemented as of 2023-02-21.

Page titles are added **after** page YAML and as the first heading in the body. For example:

```md
# How do I write FeatureBase Docs?
```

| Page type | Page title structure | Description | Example |
|---|---|---|---|
| Overview | [question] [generic-term] | A [question] will be "how do I" or "what is", while the [generic-term] is a term that will be understood to anyone who **has not used featurebase before**. | How do I import data to FeatureBase? |
| Process and Procedure| How do I [action] [task] | An action could be Create, delete, perform or something like that. A task is something the user wants to do | How do I create a table? |
| Procedure series | A procedure series can be titled [Part N] - [Action] [Task]| Part 1 - Setup Windows Subsystem for Linux<br/>Part 2 - install FeatureBase in Windows Subsystem for Linux |
| FAQ | FAQ - [Context] | The Context for the FAQ is important and the page should **always** be confined to a specific context, not a large area of functionality or an entire application | FAQ - Community ingestion |
| Issue | Issue - [summary of issue ] | The summary should be written based on what the user experiences, no more. | Issue - FeatureBase Community won't startup on Mac |
| Reference | [Context] [Specifics] | The [Context] tells the user what the page is referring to. The [Specifics] gives a brief name for what's going on | SQL SELECT statement</br>SQL Ingest tool |

## Application icons

Both products use Google Material icons which are loaded to the site automatically.

* [Inserting Google Material icons](/help-on-help/style-guide/material-icons)
