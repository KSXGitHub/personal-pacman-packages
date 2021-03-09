#! /bin/bash
set -o errexit -o pipefail -o nounset
mapfile -t flags < <(grep --invert-match '^#' "$DINO_RUNNER_SERVER_FLAGS_FILE")
exec miniserve /usr/lib/dino-runner-data/ "${flags[@]}"
