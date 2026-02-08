#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if [[ -z "$(git -C "$REPO_ROOT" status --porcelain)" ]]; then
  exit 0
fi

commit_date="$(TZ="America/Sao_Paulo" date +%F)"

git -C "$REPO_ROOT" add -A
git -C "$REPO_ROOT" commit -m "$commit_date"
