#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 5ffece2c314cf4641ea0b2bf

echo "stackbit-build.sh: finished build"
