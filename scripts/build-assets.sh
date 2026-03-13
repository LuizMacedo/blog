#!/usr/bin/env bash
# build-assets.sh — Regenerate static/css/styles.css and static/js/bundle.js
#
# WHEN TO RUN THIS:
#   - After pulling theme updates (themes/hugo-clarity/)
#   - After editing themes/hugo-clarity/assets/sass/**
#   - After editing themes/hugo-clarity/assets/js/**
#
# WHY STATIC ASSETS:
#   Hugo v0.113+ marks non-default language sites as "guest" builds.
#   Guest builds cannot access theme assets through the resource pipeline
#   (resources.Get returns a non-nil interface{} that bypasses if-guards).
#   Pre-compiling assets to static/ works for both language sites.
#
# REQUIREMENTS:
#   - hugo extended (for Sass compilation)
#   - Site must build successfully at least once with the EN site
#     (to populate resources/_gen/assets/sass/)

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
THEME_DIR="$REPO_ROOT/themes/hugo-clarity"
STATIC_CSS="$REPO_ROOT/static/css/styles.css"
STATIC_JS="$REPO_ROOT/static/js/bundle.js"

echo "==> Building site to generate/refresh Sass cache..."
cd "$REPO_ROOT"
hugo --minify --quiet || { echo "ERROR: hugo build failed"; exit 1; }

echo "==> Extracting compiled CSS from _gen cache..."
SASS_CACHE=$(find "$REPO_ROOT/resources/_gen/assets/sass" -name "*.content" | head -1)
if [[ -z "$SASS_CACHE" ]]; then
  echo "ERROR: No compiled CSS found in resources/_gen. Did hugo build succeed?"
  exit 1
fi

mkdir -p "$(dirname "$STATIC_CSS")"
cp "$SASS_CACHE" "$STATIC_CSS"
echo "    Wrote $STATIC_CSS ($(wc -c < "$STATIC_CSS") bytes)"

echo "==> Building JS bundle..."
mkdir -p "$(dirname "$STATIC_JS")"

SITE_BASE_URL=$(grep -E '^baseURL\s*=' "$REPO_ROOT/config.toml" | sed 's/.*= *"\(.*\)"/\1/')
FIGURE_SHOW=$(grep -E 'figurePositionShow' "$REPO_ROOT/config.toml" | sed 's/.*= *"\(.*\)"/\1/' || echo "false")
FIGURE_LABEL=$(grep -E 'figurePositionLabel' "$REPO_ROOT/config.toml" | sed 's/.*= *"\(.*\)"/\1/' || echo "Figure")

cat \
  "$THEME_DIR/assets/js/highlight.js" \
  "$THEME_DIR/assets/js/functions.js" \
  "$THEME_DIR/assets/js/code.js" \
  "$THEME_DIR/assets/js/index.js" \
  "$THEME_DIR/assets/js/custom.js" \
  > "$STATIC_JS.tmp"

# Substitute Hugo template variables that appear in functions.js
sed -i.bak \
  -e "s|'{{ absURL \"\" }}'|'${SITE_BASE_URL}'|g" \
  -e "s|\"{{ .Site.Params.figurePositionShow }}\"|\"${FIGURE_SHOW}\"|g" \
  -e "s|'{{ .Site.Params.figurePositionLabel }}'|'${FIGURE_LABEL}'|g" \
  "$STATIC_JS.tmp"
rm -f "$STATIC_JS.tmp.bak"
mv "$STATIC_JS.tmp" "$STATIC_JS"

echo "    Wrote $STATIC_JS ($(wc -c < "$STATIC_JS") bytes)"

echo "==> Done. Commit the updated files:"
echo "    git add static/css/styles.css static/js/bundle.js"
echo "    git commit -m 'chore: regenerate static assets after theme update'"
