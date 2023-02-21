## Style Guide README

The Style guide governs the standards the site is based upon which include:

* Page layouts for different purposes
* Standard headings
* Use of screenshots, icons, etc
* File naming

## Page layouts

There are 7 page layouts to choose from:

| Layout | Description | Example |
|---|---|---|
| Overviews | High level overview of concepts or functionality. Contain **NO** process or procedural steps. | `index.html`<br/> `/docs/cloud/cloud-databases/cloud-db-manage.md` |
| Processes | A list of tasks that provide general information without delving into functionality | `/help-on-help/publishing-workflow/deployment-process` |
| Procedures | Specific list of functional steps to perform to complete a **single** task in a **specific** area of the application. | `/docs/cloud/cloud-tables/cloud-table-create` |
| Procedure series | A set of procedures that guide the user through an end-to-end use case. Constructed so individual procedures can be reused for other purposes | `/docs/community/com-install-windows.md` which when complete takes the user to `/docs/community/com-install-linux` (which can be performed in isolation) |
| FAQ | Frequently asked questions kept to a minimal answer and/or link to another file which contains the correct answers | /docs/concepts/glossary.md |
| Issues | known issues which contain a description of the issue, the probable cause and workarounds or solutions. | Docs in `/docs/cloud/cloud-troubleshooting` |
| Reference | Specifically structured reference content | Docs found under `/docs/sql-guide` |

## Standard headings

We use standard headings to describe content, as well as custom headings which are written depending on the context and subject matter

| Heading | Used for | Example |
|---|---|---|
| Before you begin | The ultimate goal of this heading is to tell the user:<br/>* What they need to know before moving forward<br/>* What they need to have done before they get here<br/>Ultimately this is a list of prerequisites and requirements | `/docs/community/com-startup-connect` |
| Step N - <description> | Used to gather a series of steps into a context so the user knows they must be completed before moving forward. Especially useful if a group of steps requires some explanation before they are performed |
| Further information | Related information to the content on the page which will likely include links to other FeatureBase documentation, and also external links which seem useful |
| Next step | Used for Procedure series to direct user to the next page in the sequence, and also to direct the user to something else they might choose to do (e.g., after loading data, they might want to query it) |
| Syntax | May be prefixed with DDL or other specifics, but what follows is the standard syntax used to construct commands, sql, etc. NOT BNF diagrams which are their own thing | `/docs/sql-guide/statements/statement-insert` |
| Arguments | May be called something else based on the context (e.g., Flags for CLI commands) but describe the syntax provided in a table form | `/docs/community/com-ingest/com-ingest-flags-csv` |
| Examples | Usually found in reference docs and used for real-life examples of how the command/sql is used | `/docs/sql-guide/functions/function-rtrim` |
