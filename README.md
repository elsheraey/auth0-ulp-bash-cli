# auth0-ulp-bash-cli
[ulp.sh](/ulp.sh) is a bash CLI that allows you to manage [Auth0 New Universal Login Page templates API](https://auth0.com/docs/customize/universal-login-pages/universal-login-page-templates#page-templates-api).

## Prerequisites
Before using `ulp.sh`, you must have the following:
- Auth0 account.
- Auth0 Management API token with the necessary permissions for template management.
- `curl` installed on your system.

## Configuration
The script supports reading the Auth0 Management API token and template endpoint from a config file. 

Please refer to [ulp.config](/ulp.config) for more information.

## Usage
Simply run the script with `bash ./ulp.sh`.
