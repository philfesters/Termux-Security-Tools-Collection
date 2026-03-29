#!/bin/bash
# ============================================================
# FEZZY WRLD — Termux Security Tools Collection
# install-all.sh — Complete Installer
# Strategy Over Impulse | Bojack Security
# github.com/philfesters
# ============================================================

echo ""
echo "  _____ ______ _____   _______  _        ______  _____  "
echo " |  ___|  _  \  ___| |__   __|| |       |  _  \|  _  | "
echo " | |__ | | | | |__      | |   | |       | | | || | | | "
echo " |  __|| | | |  __|     | |   | |       | | | || | | | "
echo " | |___| |/ /| |___     | |   | |____   | |/ / \ \_/ / "
echo " \____/|___/ \____/     |_|   |______|  |___/   \___/  "
echo ""
echo "🔥 FEZZY WRLD — Termux Security Tools Collection"
echo "Bojack K9 Scan Initiated..."
echo "Installing 100+ security tools..."
echo ""

# ============================================================
# STEP 1: Update Termux
# ============================================================
echo "[1/6] Updating Termux packages..."
pkg update -y && pkg upgrade -y

# ============================================================
# STEP 2: Install Core Dependencies
# ============================================================
echo "[2/6] Installing core dependencies..."
pkg install -y \
  git python python-pip wget curl \
  nmap masscan netcat-openbsd \
  hydra john ncrack crunch \
  gobuster ffuf tcpdump tshark ngrep mitmproxy \
  binwalk steghide openssl gnupg \
  whois traceroute dnsutils \
  ffmpeg ruby

# ============================================================
# STEP 3: Create Tools Directory
# ============================================================
echo "[3/6] Creating tools directory..."
mkdir -p ~/tools
cd ~/tools

# ============================================================
# STEP 4: Clone OSINT & Recon Tools
# ============================================================
echo "[4/6] Cloning OSINT & Recon tools..."

git clone https://github.com/aboul3la/Sublist3r.git 2>/dev/null && \
  pip install -r Sublist3r/requirements.txt -q 2>/dev/null

git clone https://github.com/laramies/theHarvester.git 2>/dev/null && \
  pip install -r theHarvester/requirements/base.txt -q 2>/dev/null

git clone https://github.com/sherlock-project/sherlock.git 2>/dev/null && \
  pip install -r sherlock/requirements.txt -q 2>/dev/null

git clone https://github.com/s0md3v/Photon.git 2>/dev/null
git clone https://github.com/lanmaster53/recon-ng.git 2>/dev/null
git clone https://github.com/smicallef/spiderfoot.git 2>/dev/null

# ============================================================
# STEP 5: Clone Vulnerability & Web Tools
# ============================================================
echo "[5/6] Cloning vulnerability & web tools..."

git clone https://github.com/sqlmapproject/sqlmap.git 2>/dev/null
git clone https://github.com/sullo/nikto.git 2>/dev/null
git clone https://github.com/maurosoria/dirsearch.git 2>/dev/null
git clone https://github.com/s0md3v/XSStrike.git 2>/dev/null && \
  pip install -r XSStrike/requirements.txt -q 2>/dev/null
git clone https://github.com/commixproject/commix.git 2>/dev/null
git clone https://github.com/s0md3v/Arjun.git 2>/dev/null
git clone https://github.com/epinna/tplmap.git 2>/dev/null
git clone https://github.com/GerbenJavado/LinkFinder.git 2>/dev/null
git clone https://github.com/Mebus/cupp.git 2>/dev/null
git clone https://github.com/drwetter/testssl.sh.git 2>/dev/null

# ============================================================
# STEP 6: Install Python Tools via pip
# ============================================================
echo "[6/6] Installing pip tools..."

pip install \
  holehe maigret phoneinfoga \
  wafw00f sslyze \
  yt-dlp gallery-dl spotdl \
  androguard frida-tools \
  shodan \
  --break-system-packages 2>/dev/null || \
pip install \
  holehe maigret phoneinfoga \
  wafw00f sslyze \
  yt-dlp gallery-dl spotdl \
  androguard frida-tools \
  shodan

# ============================================================
# COMPLETE
# ============================================================
echo ""
echo "============================================================"
echo "✅ Installation Complete!"
echo "Tools installed in: ~/tools"
echo ""
echo "Verify with:"
echo "  nmap --version"
echo "  python ~/tools/sherlock/sherlock --version"
echo "  sqlmap --version"
echo ""
echo "Strategy Over Impulse — Bojack K9 Out."
echo "github.com/philfesters"
echo "============================================================"
