#!/usr/bin/env bash
#
# new-entry.sh — Generate a new daily-log markdown file from the template.
#
# Usage:
#   ./scripts/new-entry.sh <week_number> <day_range> [topic]
#
# Examples:
#   ./scripts/new-entry.sh 13 "54-55" "Fiber Network Integration"
#   ./scripts/new-entry.sh 14 "56"
#
# The script creates the week folder if it does not exist and writes a new
# markdown file pre-filled with today's date and the standard section headings.

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TEMPLATE="$REPO_ROOT/templates/daily-log.md"

if [ $# -lt 2 ]; then
  echo "Usage: $0 <week_number> <day_range> [topic]"
  echo "  e.g. $0 13 54-55 \"Fiber Network Integration\""
  exit 1
fi

WEEK="$1"
DAY_RANGE="$2"
TOPIC="${3:-TODO: Add topic}"

WEEK_DIR="$REPO_ROOT/Week${WEEK}"
mkdir -p "$WEEK_DIR"

TODAY="$(date '+%B %dth, %Y')"
FILENAME="Day ${DAY_RANGE}.md"
FILEPATH="$WEEK_DIR/$FILENAME"

if [ -f "$FILEPATH" ]; then
  echo "Error: $FILEPATH already exists."
  exit 1
fi

sed \
  -e "s/{DAY_NUMBER}/$DAY_RANGE/g" \
  -e "s/{DATE}/$TODAY/g" \
  -e "s/{TOPIC}/$TOPIC/g" \
  "$TEMPLATE" > "$FILEPATH"

echo "Created: $FILEPATH"
