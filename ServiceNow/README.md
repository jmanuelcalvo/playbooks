# Excecution Environment

ServiceNow EE
quay.io/acme_corp/servicenow-ee:latest


# Credencials
Credential Type: ServiceNow Credentials
Name: ServiceNow Credential
Input configuration

fields:
  - id: SN_HOST
    type: string
    label: SNOW Instance
  - id: SN_USERNAME
    type: string
    label: SNOW Username
  - id: SN_PASSWORD
    type: string
    label: SNOW Password
    secret: true
required:
  - SN_HOST
  - SN_USERNAME
  - SN_PASSWORD

Injector configuration 

env:
  SN_HOST: '{{ SN_HOST }}'
  SN_PASSWORD: '{{ SN_PASSWORD }}'
  SN_USERNAME: '{{ SN_USERNAME }}'



-----

```
fields:
  - id: snow_base_url
    type: string
    label: ServiceNow URL

  - id: snow_token_url
    type: string
    label: OAuth Token URL

  - id: snow_client_id
    type: string
    label: Client ID

  - id: snow_client_secret
    type: string
    label: Client Secret
    secret: true

  - id: snow_user
    type: string
    label: Username

  - id: snow_password
    type: string
    label: Password
    secret: true

required:
  - snow_base_url
  - snow_token_url
  - snow_client_id
  - snow_client_secret
  - snow_user
  - snow_password
```
