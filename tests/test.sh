#!/bin/sh

set -o errexit -o nounset

HERE="$(cd -- "$(dirname "$0")" >/dev/null 2>&1 && pwd -P)"

cp "$HERE/input.md" "$HERE/original.md"
trap 'mv "$HERE/original.md" "$HERE/input.md"' EXIT

"$HERE/../format_markdown" \
    --width 80 \
    --extension table \
    "$HERE/input.md"

if ! diff "$HERE/expected_output.md" "$HERE/input.md"
then
    exit 1
fi
