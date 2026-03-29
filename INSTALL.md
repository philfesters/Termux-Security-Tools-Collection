# Installation Guide — Termux Security Tools Collection
## 🔥 FEZZY WRLD | Strategy Over Impulse

---

## Prerequisites

| Requirement | Notes |
|-------------|-------|
| Termux (F-Droid) | Do NOT use Play Store version — it's outdated |
| 3GB+ free storage | Full install needs ~2-3GB |
| Internet connection | Required for git clone & pkg install |
| Storage permission | Run `termux-setup-storage` once |

> ⚠️ **Always install Termux from [F-Droid](https://f-droid.org/en/packages/com.termux/), not the Play Store.**

---

## One-Command Installation

```bash
git clone https://github.com/philfesters/Termux-Security-Tools-Collection.git && cd Termux-Security-Tools-Collection && chmod +x scripts/install-all.sh && ./scripts/install-all.sh
```

---

## Step-by-Step Installation

### Step 1: Update Termux

```bash
pkg update && pkg upgrade -y
```

### Step 2: Install Core Dependencies

```bash
pkg install -y git python python-pip wget curl
```

### Step 3: Grant Storage Access

```bash
termux-setup-storage
```

### Step 4: Clone This Repository

```bash
git clone https://github.com/philfesters/Termux-Security-Tools-Collection.git
cd Termux-Security-Tools-Collection
```

### Step 5: Run the Installer

```bash
chmod +x scripts/install-all.sh
./scripts/install-all.sh
```

### Step 6: Verify Installation

```bash
nmap --version
sqlmap --version
python sherlock/sherlock --version
```

---

## Category-Specific Installation

Only want certain tools? Use the category installer:

```bash
# OSINT tools only
./scripts/install-category.sh osint

# Web testing tools only
./scripts/install-category.sh web

# Password cracking tools only
./scripts/install-category.sh passwords

# Network tools only
./scripts/install-category.sh network
```

---

## Advanced: Proot Distro (for Metasploit & more)

Some tools require a full Linux environment. Use proot-distro:

```bash
# Install proot-distro
pkg install proot-distro

# Install Debian inside Termux
proot-distro install debian

# Login to Debian
proot-distro login debian

# Now you have full apt access
apt update && apt upgrade -y
apt install metasploit-framework -y
```

---

## Troubleshooting

| Issue | Fix |
|-------|-----|
| Permission denied | `chmod +x script.sh` |
| Package not found | `pkg update` |
| Storage not accessible | `termux-setup-storage` |
| Python module missing | `pip install module --break-system-packages` |
| pip externally-managed-environment | Add `--break-system-packages` flag |
| git clone fails | `git config --global http.sslverify false` |
| Metasploit not found | Install via proot-distro (see above) |
| Out of storage | Install only the categories you need |

---

*Strategy Over Impulse — Bojack K9 Security*
