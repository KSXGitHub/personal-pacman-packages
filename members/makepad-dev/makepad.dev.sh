#!/bin/bash
set -o errexit -o pipefail -o nounset
cd /opt/makepad-dev
exec target/release/makepad
