#!/bin/bash
# ============================================================
# FEZZY WRLD — Update All Tools
# update-all.sh
# ============================================================

echo "🔥 FEZZY WRLD — Updating all tools..."
echo "Bojack K9 Scan Initiated..."
echo ""

cd ~/tools

UPDATED=0
FAILED=0

for dir in */; do
  if [ -d "$dir/.git" ]; then
    echo "↻ Updating: $dir"
    cd "$dir"
    git pull --quiet 2>/dev/null && UPDATED=$((UPDATED+1)) || FAILED=$((FAILED+1))
    cd ..
  fi
done

# Update pip tools
echo ""
echo "↻ Updating pip tools..."
pip install --upgrade yt-dlp gallery-dl holehe maigret wafw00f --break-system-packages 2>/dev/null || \
pip install --upgrade yt-dlp gallery-dl holehe maigret wafw00f

echo ""
echo "============================================================"
echo "✅ Update Complete!"
echo "  Repos updated: $UPDATED"
echo "  Failed: $FAILED"
echo ""
echo "Strategy Over Impulse — Bojack K9 Out."
echo "github.com/philfesters"
echo "============================================================"
