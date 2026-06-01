#!/bin/bash
# Session Shutdown Hook - Updates notes and commits changes

set -e

PROJECT_DIR="${CLAUDE_PROJECT_DIR:-/Users/josephgascon/projects/freshbuild-consulting}"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
DATE_ONLY=$(date '+%Y-%m-%d')

echo "=== 🔄 Running Session Shutdown Checklist ==="
echo ""

cd "$PROJECT_DIR"

# 1. Check if there are uncommitted changes
echo "1. Checking for uncommitted changes..."
if git diff --quiet && git diff --cached --quiet; then
  echo "   ✅ No changes to commit"
else
  echo "   📝 Found uncommitted changes"

  # Show what changed
  git status --short

  # Stage all changes
  echo ""
  echo "2. Staging all changes..."
  git add -A

  # Create commit
  echo ""
  echo "3. Creating commit..."
  COMMIT_MSG="Session work - $TIMESTAMP"
  git commit -m "$COMMIT_MSG" || echo "   ⚠️  Commit failed (may be nothing to commit)"

  # Offer to push (but don't force it)
  echo ""
  echo "4. Changes committed locally"
  echo "   💡 Remember to 'git push' when ready to deploy"
fi

# 2. Update session notes with timestamp
echo ""
echo "5. Updating session timestamp..."
for notes_file in "clients/mdc-session-notes.md" "clients/retroblasts-session-notes.md"; do
  if [ -f "$PROJECT_DIR/$notes_file" ]; then
    # Update "Last Updated" line if it exists
    if grep -q "Last Updated:" "$PROJECT_DIR/$notes_file"; then
      sed -i.bak "s/\*\*Last Updated:\*\*.*/\*\*Last Updated:\*\* $TIMESTAMP/" "$PROJECT_DIR/$notes_file"
      rm -f "$PROJECT_DIR/$notes_file.bak"
    fi
  fi
done

echo ""
echo "=== ✅ Shutdown Checklist Complete ==="
echo ""
echo "📌 Reminders:"
echo "   - Session notes updated with timestamp"
echo "   - All changes committed to git"
echo "   - Run 'git push' to sync with GitHub"
echo "   - See you next session! 👋"
