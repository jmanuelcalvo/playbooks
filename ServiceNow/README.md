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




