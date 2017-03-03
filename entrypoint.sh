#!/bin/bash
set -e

cd "${WORKSPACE:-/build}"

npm install
bower --allow-root install
grunt "${TASK:-container}"

exec "$@"
