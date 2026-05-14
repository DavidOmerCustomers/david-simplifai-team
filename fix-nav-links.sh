#!/usr/bin/env bash
set -euo pipefail

find . -type f -name '*.html' -exec sed -i \
  -e 's|href="../index\.html#about"|href="/#about"|g' \
  -e 's|href="../index\.html#focus"|href="/#focus"|g' \
  -e 's|href="../index\.html#results"|href="/#results"|g' \
  -e 's|href="../index\.html#portfolio"|href="/#portfolio"|g' \
  -e 's|href="../index\.html#experience"|href="/#experience"|g' \
  -e 's|href="../index\.html#skills"|href="/#skills"|g' \
  -e 's|href="../index\.html#resumes"|href="/#resumes"|g' \
  -e 's|href="../index\.html#contact"|href="/#contact"|g' \
  {} +

echo "Done. Remaining old links:"
grep -R '../index.html#' . --include='*.html' || true
