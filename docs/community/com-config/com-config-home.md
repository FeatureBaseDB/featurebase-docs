---
title: Community configuration
layout: default
parent: Community
has_children: true
nav_order: 8
has_toc: true
---

## Configure FeatureBase Community
{: .no_toc }

FeatureBase features can be enabled or disabled via

* Command-line flags
* TOML files

<!-- commented out because waiting for com-config-auth PR to be approved and merged

{% include page-toc.md %}

## Before you begin

{% include /com-install/com-install-before-begin.md %}


<!--
## How do I set up a FeatureBase cluster?

* [Set up a FeatureBase cluster](/docs/community/com-config/old-resize-cluster)
-->
## How do I generate FeatureBase keys?

* [Generate Featurebase SSH key](/docs/community/com-config-auth/com-config-auth-key)
* [Generate FeatureBase login auth and refresh tokens](/docs/community/com-config-auth/com-config-auth-token)

## How do I set up authentication?

FeatureBase supports authentication and authorization with OAuth2.0 via a configurable identity provider (IdP).

Azure Active Directory is supported via SAML 2.0

* [Set up Azure AD single sign-on](/docs/community/com-config-auth/com-config-azure-sso)
* [Set up FeatureBase authentication](/docs/community/com-config-auth/com-config-tls-auth)
* [Set up FeatureBase group permissions](/docs/community/com-config-auth/com-config-group-permissions)

## How do I backup a FeatureBase cluster?

* [Backup a Featurebase cluster](/docs/community/com-config/com-config-backup)

## Verify backups

Use the following checklist to verify backups function correctly.

| Task | Description |
|---|---|
| Backup source | [Backup a Featurebase cluster](/docs/community/com-config/com-config-backup) |
| Set up test environment | Backup testing can be performed using a single local node provided the system has sufficient memory and disk space. |
| Restore source backup | [Restore a FeatureBase cluster](/docs/community/com-config/com-config-restore) |
| Test target | Run queries and verify results are as expected |

## How do I restore a FeatureBase cluster?

* [Restore a FeatureBase cluster](/docs/community/com-config/com-config-restore)

## End-to-end backup and restore process

Use the following checklist to successfully restore a cluster from backups.

| Task | Description |
|---|---|
| Stop all running processes | Stop any processes such as ingest |
| Backup the source | [Backup the FeatureBase Cluster](/docs/community/com-config/com-config-backup) |
| Create target | [Create a cluster](/docs/community/com-config/old-resize-cluster) |
| Restore backups to target | [Restore a FeatureBase cluster](/docs/community/com-config/com-config-restore) |
| Test target | Run test queries and verify results are as expected |
| Redirect traffic to target | Redirect query traffic from original cluster to new cluster |
| Start all processes on target | Start processes including ingest |
| Clean up source | Backup the original cluster then tear it down |
