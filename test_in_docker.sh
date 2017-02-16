#!/usr/bin/env bash

# -e: exit when a command fails
# -o pipefail: set exit status of shell script to last nonzero exit code, if any were nonzero.
set -o pipefail

echo ""
echo "Running Tests in Docker Container"
echo "================================="
docker build -t aes256cbc .
docker run --name aes256cbc_test --rm aes256cbc swift test
echo "Finished tests, docker container were removed."
