#!/bin/bash
set -o errexit -o pipefail -o nounset
cd /usr/share/nottetris2
exec love07 .
