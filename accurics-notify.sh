#!/bin/sh

curl --location --request POST 'http://localhost:8080/v1/api/env/e4bb48d4-ddab-477a-9dc4-9a2d91e91f0b/rescan' \
--header 'tenant-id: a24cbc6c-c061-4d15-85c7-215f329634a3' \
--header 'Content-Type: application/json' \
--header 'cookie: x-siac-session=8640b737-81fb-4d94-8f1e-ef6b9a6230a5' \
--data-raw ''

echo "running" > exec.log
