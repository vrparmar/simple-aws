#!/bin/sh

curl --location --request POST 'http://localhost:8080/v1/api/env/44480c13-076e-4666-ad29-4aa7cb0a2f3c/rescan' \
--header 'Content-Type: application/json' \
--header 'cookie: x-siac-session=b2185afa-27da-4fc1-ad93-67c176666d59' \
--data-raw ''

