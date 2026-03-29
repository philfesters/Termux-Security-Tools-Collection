# HOW TO PUSH TO GITHUB — Step by Step Guide
## 🔥 FEZZY WRLD | Termux Security Tools Collection

---

## Step 1: Create the GitHub Repository

1. Go to **github.com/philfesters** (log in if needed)
2. Click **"New"** or the **"+"** icon → New repository
3. Fill in:
   - Repository name: `Termux-Security-Tools-Collection`
   - Description: `🔥 FEZZY WRLD — 100+ open source security tools for Termux on Android. Strategy Over Impulse.`
   - Visibility: **Public**
   - **DO NOT** check "Add a README" (we have our own)
4. Click **"Create repository"**

---

## Step 2: Create a GitHub Personal Access Token

You need a token (not password) to push from Termux:

1. Go to: **github.com/settings/tokens**
2. Click **"Generate new token (classic)"**
3. Name: `termux-push`
4. Expiration: 90 days (or No expiration)
5. Check the box: **repo** (full repo access)
6. Click **"Generate token"**
7. **COPY THE TOKEN NOW** — you won't see it again

---

## Step 3: Set Up Git in Termux

```bash
pkg install git

git config --global user.email "your@email.com"
git config --global user.name "philfesters"
```

---

## Step 4: Create and Populate the Repo Folder

```bash
# Create folder
mkdir Termux-Security-Tools-Collection
cd Termux-Security-Tools-Collection

# Initialize git
git init
```

Now copy all your files into this folder:
- `README.md`
- `index.html`
- `INSTALL.md`
- `USAGE.md`
- `TOOLS_INDEX.md`
- `ethical-warning.md`
- `LICENSE`
- `scripts/` folder (install-all.sh, install-category.sh, update-all.sh)
- `categories/` folder

---

## Step 5: Make Scripts Executable

```bash
chmod +x scripts/install-all.sh
chmod +x scripts/install-category.sh
chmod +x scripts/update-all.sh
```

---

## Step 6: Stage and Commit All Files

```bash
git add .
git status   # verify all files are listed

git commit -m "Initial commit: FEZZY WRLD — 100+ Termux security tools"
```

---

## Step 7: Connect to GitHub and Push

```bash
git branch -M main
git remote add origin https://github.com/philfesters/Termux-Security-Tools-Collection.git
git push -u origin main
```

When prompted:
- **Username:** `philfesters`
- **Password:** paste your Personal Access Token (not your account password)

---

## Step 8: Verify on GitHub

Go to: **github.com/philfesters/Termux-Security-Tools-Collection**

You should see all your files!

---

## Step 9 (OPTIONAL): Enable GitHub Pages

To host `index.html` as a live website:

1. Go to your repo on GitHub
2. Click **Settings** → **Pages** (left sidebar)
3. Source: **Deploy from a branch**
4. Branch: **main** → Folder: **/ (root)**
5. Click **Save**

Your site will be live at:
**https://philfesters.github.io/Termux-Security-Tools-Collection**

(Takes ~2-5 minutes to go live)

---

## Full One-Liner (After Copying Files)

```bash
cd Termux-Security-Tools-Collection && git init && git add . && git commit -m "FEZZY WRLD: Termux Security Tools Collection — Strategy Over Impulse" && git branch -M main && git remote add origin https://github.com/philfesters/Termux-Security-Tools-Collection.git && git push -u origin main
```

---

## Future Updates

After making changes, push updates with:

```bash
git add .
git commit -m "Update: [describe what you changed]"
git push
```

---

*Strategy Over Impulse — Bojack K9 Security*
*github.com/philfesters*
