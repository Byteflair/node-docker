#!/bin/bash
set -e

npm install
bower --allow-root install
grunt "${TASK:-container}"

exec "$@"
