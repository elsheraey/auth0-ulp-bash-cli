#!/bin/bash

# Read the config file
. ./ulp.config

# Define a function to set the template
set_template() {

  # Send the API request to set the template
  curl --request PUT \
    --url "${TEMPLATE_ENDPOINT}" \
    --header "authorization: Bearer ${MGMT_API_ACCESS_TOKEN}" \
    --header 'content-type: text/html' \
    --data-binary "@ulp.html" \

  echo "Action complete..."
}

# Define a function to get the template
get_template() {

  # Send the API request to get the template
  curl --request GET \
    --url "${TEMPLATE_ENDPOINT}" \
    --header "authorization: Bearer ${MGMT_API_ACCESS_TOKEN}" \
    --w "\n"

  echo "Action complete..."
}

# Define a function to delete the template
delete_template() {

  # Send the API request to delete the template
  curl --request DELETE \
    --url "${TEMPLATE_ENDPOINT}" \
    --header "authorization: Bearer ${MGMT_API_ACCESS_TOKEN}" \

  echo "Action complete..."
}

# Loop until the user chooses to exit
while true; do

  # Prompt the user to choose an action
  echo "Choose an action:"
  echo "1. Set the template"
  echo "2. Get the template"
  echo "3. Delete the template"
  echo "0. Exit"
  read -p "Enter your choice (0-3): " CHOICE

  # Call the appropriate function based on the user's choice
  case "${CHOICE}" in
    1) set_template;;
    2) get_template;;
    3) delete_template;;
    0) echo "Exiting..."; exit;;
    *) echo "Invalid choice";;
  esac
done