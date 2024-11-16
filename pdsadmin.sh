#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

# Command to run.
COMMAND="${1:-help}"
shift || true

# Ensure the user is root, since it's required for most commands.
if [[ "${EUID}" -ne 0 ]]; then
  echo "ERROR: This script must be run as root"
  exit 1
fi

SCRIPT_FILE="/app/pdsadmin/${COMMAND}.sh"
${SCRIPT_FILE} "$@"
