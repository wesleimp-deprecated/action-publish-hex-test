#!/bin/ash
set -eu
set -o pipefail

export HEX_API_KEY=TEST_API
if [[ -z "${HEX_API_KEY}" ]]; then
  echo "Hex key is not set in environment variables"
  exit 1
fi

echo "===> Publishing hex package"
echo
mix hex.publish
