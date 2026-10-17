#!/usr/bin/env bash
# Quick update script for regenerating intro.gif and pushing to GitHub
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$DIR"

echo "==> Re-rendering assets/intro.gif with VHS..."
vhs intro.tape

echo "==> Render completed successfully: $(ls -lh assets/intro.gif | awk '{print $5}')"

if [ "$1" == "--push" ] || [ "$1" == "-p" ]; then
  git add assets/intro.gif intro.tape setup_env.sh README.md
  git commit -m "chore(profile): update terminal intro animation"
  git push origin main
  echo "==> Changes pushed to GitHub!"
else
  echo ""
  echo "Preview the gif or run './update.sh --push' to commit and push to GitHub."
fi
