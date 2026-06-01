#!/bin/bash
# Session Startup Hook - Loads context for Claude at session start

echo "=== 📋 Loading Session Context ==="
echo ""

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-/Users/josephgascon/projects/freshbuild-consulting}"

# Load Quick Reference for commands/URLs
if [ -f "$PROJECT_DIR/QUICK-REFERENCE.md" ]; then
  echo "## Quick Reference"
  cat "$PROJECT_DIR/QUICK-REFERENCE.md"
  echo ""
fi

# Load Ideas file
if [ -f "$PROJECT_DIR/IDEAS.md" ]; then
  echo "## Current Ideas"
  cat "$PROJECT_DIR/IDEAS.md"
  echo ""
fi

# Load MDC session notes
if [ -f "$PROJECT_DIR/clients/mdc-session-notes.md" ]; then
  echo "## MDC Session History"
  cat "$PROJECT_DIR/clients/mdc-session-notes.md"
  echo ""
fi

# Load RetroBlasts session notes
if [ -f "$PROJECT_DIR/clients/retroblasts-session-notes.md" ]; then
  echo "## RetroBlasts Session History"
  # Only show last 100 lines to avoid overwhelming context
  echo "(Showing last 100 lines)"
  tail -100 "$PROJECT_DIR/clients/retroblasts-session-notes.md"
  echo ""
fi

# Show current git status
if [ -d "$PROJECT_DIR/.git" ]; then
  echo "## Git Status"
  cd "$PROJECT_DIR"
  git status --short
  echo ""
fi

echo "=== ✅ Context Loaded ==="
