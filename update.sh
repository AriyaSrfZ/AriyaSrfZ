#!/usr/bin/env bash
# Update script for regenerating intro.gif and arcade contribution graph
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
cd "$DIR"

echo "==> Re-rendering assets/intro.gif with VHS..."
vhs intro.tape

echo "==> Updating Breakout commit arcade SVGs..."
mkdir -p assets/arcade
npx --yes pacman-contribution-graph --platform github --username AriyaSrfZ --game breakout --gameTheme github -o assets/arcade/breakout-contribution-graph.svg
npx --yes pacman-contribution-graph --platform github --username AriyaSrfZ --game breakout --gameTheme github-dark -o assets/arcade/breakout-contribution-graph-dark.svg

echo "==> Render completed successfully!"
ls -lh assets/intro.gif assets/arcade/*.svg

if [ "$1" == "--push" ] || [ "$1" == "-p" ]; then
  git add assets/intro.gif assets/arcade/*.svg intro.tape setup_env.sh README.md
  git commit -m "chore(profile): update terminal animation and commit arcade"
  git push origin main
  echo "==> Changes pushed to GitHub!"
else
  echo ""
  echo "Preview the files or run './update.sh --push' to commit and push to GitHub."
fi
