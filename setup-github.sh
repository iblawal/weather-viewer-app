#!/bin/bash
# =====================================================
# GROUP 6 — Weather Viewer App
# GitHub Setup Script
# Run this ONCE from inside the project folder
# Usage: bash setup-github.sh
# =====================================================

GITHUB_USER="iblawal"
REPO_NAME="weather-viewer-app"
REPO_VISIBILITY="public"

echo ""
echo "========================================"
echo "  GROUP 6 — GitHub Setup"
echo "========================================"
echo ""

# ── STEP 1: Init git ──────────────────────────────
echo "[1/5] Initialising git..."
git init
git add .
git commit -m "feat: initial project structure — Group 6 Weather Viewer App"

# ── STEP 2: Create repo on GitHub ────────────────
echo ""
echo "[2/5] Creating GitHub repo '$REPO_NAME'..."
echo "      (You need the GitHub CLI installed: https://cli.github.com)"
echo "      If not installed, create the repo manually at https://github.com/new"
echo ""

gh repo create "$REPO_NAME" \
  --"$REPO_VISIBILITY" \
  --description "GROUP 6 — Weather Viewer App (React Native Expo + WeatherAPI.com)" \
  --source=. \
  --remote=origin \
  --push

# ── STEP 3: Push to main ─────────────────────────
echo ""
echo "[3/5] Pushing to GitHub..."
git branch -M main
git push -u origin main

# ── STEP 4: Add collaborators ────────────────────
echo ""
echo "[4/5] Adding team collaborators..."
echo "      Replace the usernames below with your team's real GitHub usernames."
echo ""

COLLABORATORS=(
  "teammate1_github_username"
  "teammate2_github_username"
  "teammate3_github_username"
  "teammate4_github_username"
)

for USERNAME in "${COLLABORATORS[@]}"; do
  echo "  → Inviting $USERNAME..."
  gh api \
    --method PUT \
    -H "Accept: application/vnd.github+json" \
    "/repos/$GITHUB_USER/$REPO_NAME/collaborators/$USERNAME" \
    -f permission='push'
done

# ── STEP 5: Done ─────────────────────────────────
echo ""
echo "[5/5] ✅ All done!"
echo ""
echo "  Repo URL : https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "  Each teammate will receive a GitHub email invitation."
echo "  They should:"
echo "    1. Accept the invite from their email or GitHub notifications"
echo "    2. Clone the repo:  git clone https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "    3. Install deps:    npm install"
echo "    4. Copy env file:   cp .env.example .env  (then add the API key)"
echo "    5. Run the app:     npx expo start"
echo ""
echo "========================================"
