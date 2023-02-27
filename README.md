# bash-auth0-ulp
`ulp.sh` is a bash script that allows you to manage the New Universal Login Page templates API in Auth0.

## Prerequisites
Before using ulp.sh, you must have the following:

- An Auth0 account.
- An Auth0 Management API token with the necessary permissions for template management.
- curl installed on your system

## Usage
Simply run the script with `bash ./ulp.sh`.

## Configuration
The script supports reading the Auth0 Management API token and endpoint URLs from a config file. Please review `ulp.config` for more information.