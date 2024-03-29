# Writing rules

NOTE: This is not an exhaustive list and doesn't go into grammar rules.

## Overview

You can make **one** assumption about our customers: they know how to do their job. You **cannot** assume they know how to use our product.

These rules will help us communicate better with our customers, and provide all the information they need in a way that is clear, understandable and comprehensive.

Ignore these rules, and you cause problems for our users (and yourself because PRs will be sent back for review).

## Rule 1 - Write in plain English

Plain English makes the content easier to understand and follow for native speakers and users with English as an additional language.

For example:

| Rule | Informal English | Problem | Plain English |
|---|---|---|---|
| If it's important enough to write, it's important enough to make it clear. | "...If you are the inquisitive type, you may be interested in the [architectural overview]()..." | It’s not possible to tell if this is required information or something that’s only important to specific people. | System Administrators can find further information in the [architectural overview](URL) |
| Write clear, unambiguous instructions | "...but if you’d rather look at the finished tutorial, please see the [full source code]().." | Unclear, long-winded instruction. | [Learn more about <task/tutorial>](URL) |
| Get to the point; Help is not a conversation | "...As you work through the guide, please note any questions or feedback that you may have for the FeatureBase team. We’re always looking for ways to improve the experience!..."  | Documentation is different to a verbal tutorial. It’s direct, factual and accurate because it’s going to be used by a user to complete specific tasks.<br/>You can be chatty and informal in Slack conversations or face-to-face but not in documentation. | **Further support**<br/> [Contact FeatureBase support with questions or issues](#) |
| Keep it simple | "...XYZ runs in non-interactive mode while it does A, B and C." | Don't invent terminology or make an explanation complex when there's a simple way to explain something | "...XYZ runs automatically while it does A, B and C." |
| Tell users what to expect BEFORE providing examples | [EXAMPLE CODE BLOCK]<br/>Above, bind tells FeatureBase to listen for HTTP request on all IPv4 addresses on the local machine at port 10101. | Telling a user what to expect after they’ve done it is like signing a contract without reading it. | Break this down into syntax, then explain arguments, then provide an example |

## Rule 2 - Context is king

Every page should be written from a **SINGLE** context and with a **single purpose** so it:

* is easier to follow
* is easier to find in search
* can be used in different contexts

Refer to [Page purpose and layout](/help-on-help/style-guide/page-purpose-layout) for further information.

## Rule 3 - Don’t document what’s obvious in the UI

You don’t need to document what’s in the UI unless it’s **NOT** immediately obvious to the user.

And this goes **double** for images

| Don't say this | Do say this |
|---|---|
| Fill in your name, surname, date of birth, mother’s maiden name, your Social Security number or equivalent, then  tick the Terms of service on the sign-up page. | Complete the fields on the sign-up page. |

## Rule 4 - If everything is important, nothing is

Excessive use of character and paragraph styles makes finding important information next to impossible.

We allow six ways to provide a way to make information stand out:

| Text style | Used for | Example |
|---|---|---|
| Headings | Page title is heading 1, Then headings go from Heading 2-4 | [Standard headings](/help-on-help/style-guide/standard-headings)<br/>[Custom headings](/help-on-help/style-guide/custom-heading-page-title) |
| **bold** | UI menu items or buttons | Click **Databases** > **Create Database** |
| `code-highlight in paragraph` | Used sparingly for flags or arguments. | The `min` constraint... |
| code blocks | Code blocks with three back-ticks should have the language included | >```go |
| Text callouts/colored background | Important information such as warnings | [Text callouts](/help-on-help/writing-help/writing-content-callouts) |
| Material icons | UI buttons and menu items | [/help-on-help/style-guide/material-icons] |

* [Banned text formatting](/help-on-help/writing-help/writing-bans#banned-text-styling)

## Rule 5 - DO NOT use single words as hyperlink anchor text

* [Learn more about hyperlink anchor text](/help-on-help/writing-help/writing-hyperlinks)

## Rule 6 - Avoid content duplication

Content duplication occurs when:
* there's insufficient time available to review and revise existing documentation
* when existing documentation has been [written from too many contexts](/help-on-help/writing-help/writing-planning-content)
* when it's too difficult to work out which page to revise

Content duplication is a problem:

* For users -- how do they know which content is up-to-date and correct for their particular use-case?
* For maintenance -- how do we tell which content is accurate, if it's for a particular version of the product(s), etc

## Rule 7 -- don't add images, videos or unnecessary text formatting

* [Writing bans](/help-on-help/writing-help/writing-bans)

## Further information

* [Writing modular content](/help-on-help/writing-help/writing-modular-content)
* [Writing reusable content](/help-on-help/writing-help/writing-common-include)
