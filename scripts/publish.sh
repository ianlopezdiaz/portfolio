#!/usr/bin/env bash
# Render and publish the Quarto site to the gh-pages branch. Run this after
# any content edit that should be reflected on the published site.
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."

echo "Publishing to GitHub Pages..."
quarto publish gh-pages --no-browser --no-prompt
