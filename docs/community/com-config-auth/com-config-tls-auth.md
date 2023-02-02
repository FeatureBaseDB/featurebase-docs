---
title: TLS authentication
layout: default
parent: Community authentication
grand_parent: Community
---

# How do I setup TLS authentication for FeatureBase Community?

You can enable TLS authentication for FeatureBase Community by adding values to

## Before you begin

* [Learn about TLS (Transport Layer Security)](https://en.wikipedia.org/wiki/Transport_Layer_Security){:target="_blank"}
* {% include /com-install/com-install-before-begin.md %}
* [Generate a `secret-key`](/docs/community/com-config-auth/com-config-auth-key)
* [Add FeatureBase as an Azure AD application](/docs/community/com-config-azure-sso)

## Authentication syntax

Add values to `/featurebase-install-directory/opt/featurebase.conf`

```
[auth]
  enable = true
  {client-id = "<SAML IdP value>"}
  {client-secret = "<SAML IdP value>"}
  {authorize-url = "<SAML IdP value>"}
  {token-url = "<SAML IdP value>"}
  {group-endpoint-url = "<SAML IdP value>"}
  {redirect-base-url = "<SAML IdP value>"}
  {logout-url = "<SAML IdP value>"}
  {scopes = <SAML IdP value>}
  {secret-key = "<featurebase-auth-key>"}
  {permissions = "/featurebase-directory/permissions.yaml"}
  [query-log-path = "/log/directory/"]
  [configured-ips = []]
```

### Keys

| Key | Description | Required | Further information |
|---|---|---|---|
| `enable=true` |  |  |  |
| `client-id` | SAML 2.0 Identity Provider (IdP) obtained from Azure AD Applications Overview | Yes | |
| `client-secret` | As for `client-id`.  | Yes | Obtain from the IdP |
| `authorize-url` | IdP obtained from Applications Overview > Endpoints. | Yes | Use `v2` links if there are two versions available. |
| `token-url` |  As for `authorize-url` | Yes |  |
| `group-endpoint-url` | SAML IdP API value | Yes | [SAML 2.0 IdP API documentation](https://learn.microsoft.com/en-us/azure/active-directory-b2c/saml-service-provider-options?pivots=b2c-user-flow){:target="_blank"} |
| `redirect-base-url` |  IdP URL that corresponds to your primary FeatureBase node. | Yes | Example: `https://featurebase-hostname-or-ip:10101` |
| `logout-url` | SAML IdP API value | Yes | [Single sign-out SAML protocol] documentation](https://learn.microsoft.com/en-us/azure/active-directory/develop/single-sign-out-saml-protocol){:target="_blank"} |
| `scopes` | SAML IdP API value | Yes | [SAML 2.0 scopes and permissions](https://learn.microsoft.com/en-us/azure/active-directory/develop/scopes-oidc){:target="_blank"} |
| `secret-key` | Secret key used to secure inter-node communication in a FeatureBase cluster. | Yes | [Generate a secret key](/docs/community/com-config-auth/com-config-auth-key) |
| `permissions` | Path for group permissions file that maps group IDs to index-level access. | Yes | [Add group permissions](/docs/community/com-config-auth/com-config-group-permissions) |
| `query-log-path` | Set path for query audit log | Optional | [Setup the query audit log](/docs/community/com-config-auth/com-config-log-audit-query) |
| `configured-ips` | Admin permissions are granted for any IP or subnet in this list.  If not included or not set, no IPs are allow-listed. | Optional | Domain names and `0.0.0.0/0` are not allowed. |

## Examples

### Azure Active Directory configuration

```
[auth]
  enable = true
  {client-id = "<SAML IdP value>"}
  {client-secret = "<SAML IdP value>"}
  {authorize-url = "<SAML IdP value>"}
  {token-url = "<SAML IdP value>"}
  group-endpoint-url = "https://graph.microsoft.com/v1.0/me/transitiveMemberOf/"
  {redirect-base-url = "<SAML IdP value>"}
  logout-url = "https://login.microsoftonline.com/common/oauth2/v2.0/logout"
  scopes = ["https://graph.microsoft.com/.default", "offline_access"]
  {secret-key = "de399a76250b6d85f2a7b70d7b5543ca350ee5e4d3bbf552075a4374126aa361"}
  {permissions = "/featurebase-directory/permissions.yaml"}
```

## Next step

* [Add group permissions](/docs/community/com-config-auth/com-config-group-permissions)
