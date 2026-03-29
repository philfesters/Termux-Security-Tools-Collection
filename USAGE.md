# Usage Guide — Termux Security Tools Collection
## 🔥 FEZZY WRLD | Strategy Over Impulse

---

## Quick Start

```bash
# Update all tools
./scripts/update-all.sh

# Check installed tools
pkg list-installed | grep -E "nmap|sqlmap|hydra"

# Launch a tool
nmap -sV target.com
```

---

## Workflow 1: Reconnaissance

```bash
# Phase 1: Domain Intelligence
whois target.com > domain_info.txt

# Phase 2: DNS Enumeration
dig target.com ANY +short > dns_records.txt

# Phase 3: Subdomain Discovery
subfinder -d target.com -o subdomains.txt
# OR
python Sublist3r/sublist3r.py -d target.com

# Phase 4: Port & Service Scan
nmap -sV -O target.com

# Phase 5: Web Tech Detection
whatweb target.com

# Phase 6: Email/Employee Harvest
theHarvester -d target.com -b google

# Phase 7: Username Search
python sherlock/sherlock username

# Phase 8: Screenshot All Subdomains
cat subdomains.txt | gowitness file -
```

---

## Workflow 2: Vulnerability Assessment

```bash
# Directory brute force
gobuster dir -u http://target.com -w /usr/share/wordlists/dirb/common.txt

# Web server scan
perl nikto/nikto.pl -h http://target.com

# WordPress scan (if WP detected)
wpscan --url http://target.com

# Template-based vuln scan
nuclei -u http://target.com

# SQL injection test
sqlmap -u "http://target.com/page?id=1" --dump --tables

# XSS detection
python XSStrike/xsstrike.py -u "http://target.com/search?q=test"

# WAF detection first!
wafw00f http://target.com
```

---

## Workflow 3: Password Testing

```bash
# Build custom wordlist from target site
cewl -d 2 -m 6 http://target.com -w custom.txt

# Build profile-based wordlist
python cupp/cupp.py -i

# Online brute force (SSH)
hydra -L users.txt -P passwords.txt ssh://target.com

# Online brute force (HTTP form)
hydra -l admin -P pass.txt http-post-form target.com/login:"user=^USER^&pass=^PASS^:Invalid"

# Crack MD5 hashes
john --format=raw-md5 hashes.txt
# OR
hashcat -m 0 hashes.txt wordlist.txt

# Network auth cracking
ncrack -U users.txt -P pass.txt target.com:22
```

---

## Workflow 4: Traffic Analysis

```bash
# Capture all packets
tcpdump -i wlan0 -w capture.pcap

# Filter by IP
tcpdump -i wlan0 host 192.168.1.100

# Extract HTTP traffic
tcpdump -i wlan0 port 80 -A

# Search for passwords in traffic
ngrep -d any 'password|admin|login'

# MitM proxy for HTTPS
mitmproxy -p 8080
```

---

## Quick Reference — Common Commands

| Task | Command |
|------|---------|
| Scan network | `nmap 192.168.1.0/24` |
| Find subdomains | `subfinder -d example.com` |
| SQL injection | `sqlmap -u target.com?id=1` |
| Brute force SSH | `hydra -l user -P pass.txt ssh://target` |
| Crack hash | `hashcat -m 0 hash.txt wordlist.txt` |
| Find username | `python sherlock username` |
| Dir brute force | `gobuster dir -u target -w wordlist` |
| XSS scan | `python xsstrike.py -u "target?q=test"` |
| Capture packets | `tcpdump -i wlan0 -w cap.pcap` |
| Email OSINT | `python holehe.py email@example.com` |
| Phone OSINT | `python phoneinfoga.py -n +1234567890` |
| Generate wordlist | `cupp -i` |
| APK decompile | `apktool d app.apk` |
| Metadata extract | `exiftool image.jpg` |
| Hide data in image | `steghide embed -cf cover.jpg -ef secret.txt` |
| Download video | `yt-dlp URL` |
| Convert media | `ffmpeg -i input.mp4 output.avi` |
| HTTP file server | `python -m http.server 8000` |

---

*Bojack K9 Security — Loyalty. Protection. Code.*
*Strategy Over Impulse — github.com/phil mli i 3 