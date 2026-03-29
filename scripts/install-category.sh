#!/bin/bash
# ============================================================
# FEZZY WRLD — Category-Specific Installer
# Usage: ./install-category.sh [osint|web|passwords|network|forensics|utilities]
# ============================================================

CATEGORY=$1
TOOLS_DIR=~/tools

echo "🔥 FEZZY WRLD — Category Installer"
echo "Bojack K9 Scan Initiated..."
echo ""

mkdir -p $TOOLS_DIR
cd $TOOLS_DIR

case "$CATEGORY" in
  osint)
    echo "Installing OSINT & Reconnaissance tools..."
    pkg install -y nmap masscan whois dnsutils
    git clone https://github.com/sherlock-project/sherlock.git
    git clone https://github.com/aboul3la/Sublist3r.git
    git clone https://github.com/laramies/theHarvester.git
    git clone https://github.com/smicallef/spiderfoot.git
    git clone https://github.com/s0md3v/Photon.git
    pip install holehe maigret phoneinfoga shodan --break-system-packages 2>/dev/null || \
    pip install holehe maigret phoneinfoga shodan
    echo "✅ OSINT tools installed!"
    ;;

  web)
    echo "Installing Web Application Testing tools..."
    pkg install -y gobuster ffuf
    git clone https://github.com/sqlmapproject/sqlmap.git
    git clone https://github.com/s0md3v/XSStrike.git
    git clone https://github.com/maurosoria/dirsearch.git
    git clone https://github.com/sullo/nikto.git
    git clone https://github.com/commixproject/commix.git
    git clone https://github.com/s0md3v/Arjun.git
    pip install wafw00f wfuzz --break-system-packages 2>/dev/null || \
    pip install wafw00f wfuzz
    echo "✅ Web testing tools installed!"
    ;;

  passwords)
    echo "Installing Password Cracking tools..."
    pkg install -y hydra john ncrack crunch
    git clone https://github.com/Mebus/cupp.git
    echo "✅ Password tools installed!"
    ;;

  network)
    echo "Installing Network Testing tools..."
    pkg install -y nmap masscan netcat-openbsd bettercap tcpdump tshark ngrep mitmproxy whois traceroute dnsutils
    echo "✅ Network tools installed!"
    ;;

  forensics)
    echo "Installing Forensics & Crypto tools..."
    pkg install -y binwalk steghide openssl gnupg
    pip install androguard frida-tools --break-system-packages 2>/dev/null || \
    pip install androguard frida-tools
    echo "✅ Forensics tools installed!"
    ;;

  utilities)
    echo "Installing Utilities..."
    pkg install -y ffmpeg wget curl
    pip install yt-dlp gallery-dl spotdl --break-system-packages 2>/dev/null || \
    pip install yt-dlp gallery-dl spotdl
    echo "✅ Utilities installed!"
    ;;

  *)
    echo "Usage: $0 [category]"
    echo ""
    echo "Available categories:"
    echo "  osint       - OSINT & Reconnaissance tools (25 tools)"
    echo "  web         - Web Application Testing tools (15 tools)"
    echo "  passwords   - Password Cracking tools (10 tools)"
    echo "  network     - Network Testing tools (10 tools)"
    echo "  forensics   - Forensics & Crypto tools (7 tools)"
    echo "  utilities   - Utility tools (8 tools)"
    echo ""
    echo "Example: ./install-category.sh osint"
    exit 1
    ;;
esac

echo ""
echo "Strategy Over Impulse — Bojack K9 Out."
echo "github.com/philfesters"
