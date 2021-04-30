#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
HELLO_FILE="${SCRIPT_DIR}/public-html/index.html"

 if [ -z "$1" ]; then echo "No person name provided"; exit 1; fi
PERSON_NAME=$1

echo "<html><body><h1>Hello ${PERSON_NAME}!<h1></body></html>" | tee $HELLO_FILE 2>/dev/null

if [[ ! -f "${HELLO_FILE}" ]]; then
  echo "ERROR - Failed to generate html file"
  exit 1
fi
