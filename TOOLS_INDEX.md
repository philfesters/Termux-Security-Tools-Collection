# Tools Index — 105+ Security Tools
## 🔥 FEZZY WRLD | Termux Security Tools Collection

*Last updated: 2026-03-29 | github.com/philfesters*

---

## Category 1: OSINT & Reconnaissance (25 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **nmap** | Network/port scanner | `pkg install nmap` | `nmap -sV target` |
| **sublist3r** | Subdomain enumeration | `git clone github.com/aboul3la/Sublist3r` | `python sublist3r.py -d domain` |
| **amass** | Subdomain discovery | Manual install | `amass enum -d domain` |
| **subfinder** | Fast subdomain finder | Manual install | `subfinder -d domain` |
| **assetfinder** | Find assets/subdomains | Manual install | `assetfinder --subs-only domain` |
| **masscan** | Fast port scanner | `pkg install masscan` | `masscan -p1-65535 target` |
| **theHarvester** | Email/domain OSINT | `git clone github.com/laramies/theHarvester` | `theHarvester -d domain -b google` |
| **sherlock** | Username search (300+ sites) | `git clone github.com/sherlock-project/sherlock` | `python sherlock username` |
| **holehe** | Email OSINT | `pip install holehe` | `holehe email@example.com` |
| **maigret** | Username search | `pip install maigret` | `maigret username` |
| **phoneinfoga** | Phone number OSINT | `pip install phoneinfoga` | `phoneinfoga scan -n +1234567890` |
| **spiderfoot** | OSINT automation | `git clone github.com/smicallef/spiderfoot` | `python sf.py -l 127.0.0.1:5001` |
| **recon-ng** | Web recon framework | `git clone github.com/lanmaster53/recon-ng` | `./recon-ng` |
| **photon** | Fast web crawler | `git clone github.com/s0md3v/Photon` | `python photon.py -u domain` |
| **twint** | Twitter/X OSINT | `git clone github.com/twintproject/twint` | `python -m twint -u username` |
| **instaloader** | Instagram OSINT | `pip install instaloader` | `instaloader profile username` |
| **whatweb** | Web tech detection | `pkg install whatweb` | `whatweb domain` |
| **gowitness** | Website screenshots | Manual install | `gowitness single https://domain` |
| **gau** | URL gathering | Manual install | `gau domain` |
| **waybackurls** | Historical URLs | Manual install | `waybackurls domain` |
| **hakrawler** | URL crawler | Manual install | `echo domain | hakrawler` |
| **gospider** | Spider tool | Manual install | `gospider -s domain` |
| **aquatone** | Domain visualization | Manual install | `cat domains.txt \| aquatone` |
| **shodan-cli** | Shodan search | `pip install shodan` | `shodan search "apache"` |
| **maltego** | Graph OSINT | APK from maltego.com | GUI — Import → Generate links |

---

## Category 2: Vulnerability Scanners (12 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **sqlmap** | SQL injection automation | `git clone github.com/sqlmapproject/sqlmap` | `sqlmap -u "domain/page?id=1" --dump` |
| **nikto** | Web server scanner | `git clone github.com/sullo/nikto` | `perl nikto.pl -h domain` |
| **wpscan** | WordPress scanner | `gem install wpscan` | `wpscan --url domain` |
| **nuclei** | Template-based scanning | Manual install | `nuclei -u domain` |
| **dirsearch** | Directory brute force | `git clone github.com/maurosoria/dirsearch` | `python dirsearch.py -u domain` |
| **gobuster** | Dir/file brute force | `pkg install gobuster` | `gobuster dir -u domain -w wordlist` |
| **ffuf** | Web fuzzer | `pkg install ffuf` | `ffuf -u domain/FUZZ -w wordlist` |
| **commix** | Command injection | `git clone github.com/commixproject/commix` | `python commix.py --url domain` |
| **wafw00f** | WAF detection | `pip install wafw00f` | `wafw00f domain` |
| **testssl** | SSL/TLS scanner | `git clone github.com/drwetter/testssl.sh` | `./testssl.sh domain` |
| **sslyze** | SSL scanner | `pip install sslyze` | `sslyze domain` |
| **arjun** | Parameter discovery | `git clone github.com/s0md3v/Arjun` | `arjun -u domain/page.php` |

---

## Category 3: Exploitation Frameworks (10 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **metasploit** | Exploitation framework | proot-distro → `apt install metasploit-framework` | `msfconsole` |
| **routersploit** | Router exploits | `git clone github.com/threat9/routersploit` | `python3 rsf.py` |
| **beef** | Browser exploitation | `git clone github.com/beefproject/beef` | `./beef` |
| **crackmapexec** | Credential testing | `pip install crackmapexec` | `crackmapexec smb target` |
| **empire** | Post-exploitation | `git clone github.com/BC-SECURITY/Empire` | `./empire` |
| **set** | Social Engineering Toolkit | `git clone github.com/trustedsec/social-engineer-toolkit` | `python setoolkit` |
| **sliver** | C2 framework | Manual from GitHub | `./sliver-server` |
| **veil** | Payload generator | Manual from GitHub | `veil` |
| **ghost** | Android ADB backdoor | `pip install ghost` | Python module |
| **sn1per** | Automated pentest | `git clone github.com/1N3/Sn1per` | `./sniper -t target` |

---

## Category 4: Web Application Testing (15 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **xsstrike** | XSS detection suite | `git clone github.com/s0md3v/XSStrike` | `python xsstrike.py -u "domain?param=test"` |
| **sstimap** | SSTI scanner | `git clone github.com/vladko312/SSTImap` | `python sstimap.py -u "domain?name=test"` |
| **tplmap** | Template injection | `git clone github.com/epinna/tplmap` | `python tplmap.py -u "domain?name=test"` |
| **graphqlmap** | GraphQL testing | `git clone github.com/swisskyrepo/GraphQLmap` | `python graphqlmap.py -u domain/graphql` |
| **kiterunner** | API testing | Manual install | `./kr scan domain -w routes-large` |
| **lfisuite** | LFI scanner | `git clone github.com/D35m0nd142/LFISuite` | `python lfisuite.py` |
| **fimap** | LFI/RFI scanner | Manual install | `python fimap.py -u "domain?file=test"` |
| **wfuzz** | Web fuzzer | `pip install wfuzz` | `wfuzz -z file,wordlist domain/FUZZ` |
| **httpx** | HTTP probing | Manual install | `httpx -l urls.txt` |
| **httprobe** | Live host detection | Manual install | `cat domains.txt \| httprobe` |
| **smuggler** | HTTP smuggling | `git clone github.com/defparam/smuggler` | `python smuggler.py -u domain` |
| **breacher** | Admin panel finder | `git clone github.com/s0md3v/Breacher` | `python breacher.py -u domain` |
| **ssrf-finder** | SSRF detection | Manual from GitHub | `python ssrf-finder.py -u domain` |
| **linkfinder** | JS endpoint finder | `git clone github.com/GerbenJavado/LinkFinder` | `python linkfinder.py -i domain` |
| **dirbuster** | Directory brute force | Android APK | `dirbuster` |

---

## Category 5: Password Cracking (10 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **hydra** | Login brute force | `pkg install hydra` | `hydra -l user -P pass.txt target ssh` |
| **john** | Hash cracker | `pkg install john-jumbo` | `john --format=raw-md5 hash.txt` |
| **hashcat** | GPU hash cracker | Manual install | `hashcat -m 0 hash.txt wordlist.txt` |
| **ncrack** | Network auth cracker | `pkg install ncrack` | `ncrack -U users.txt -P pass.txt target:22` |
| **medusa** | Parallel brute forcer | Manual install | `medusa -h target -U users.txt -P pass.txt -M ssh` |
| **crunch** | Wordlist generator | `pkg install crunch` | `crunch 4 6 abc123 -o wordlist.txt` |
| **cupp** | Custom profile wordlist | `git clone github.com/Mebus/cupp` | `python cupp.py -i` |
| **cewl** | Website wordlist spider | proot-distro → `apt install cewl` | `cewl -d 2 -w wordlist.txt domain` |
| **kwprocessor** | Keyboard walk generator | Manual from GitHub | `./kwp basechars.txt keymaps.txt routes.txt` |
| **princeprocessor** | Wordlist mutations | Manual from GitHub | `./pp64.bin -o output.txt < wordlist.txt` |

---

## Category 6: Network Testing (10 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **nmap** | Network scanner | `pkg install nmap` | `nmap -sV -O target` |
| **masscan** | Fast port scanner | `pkg install masscan` | `masscan -p80,443 target/24` |
| **zmap** | Internet scanner | Manual install | `zmap -p 80 target/24` |
| **netcat** | TCP/IP swiss army knife | `pkg install netcat-openbsd` | `nc -l -p 4444` |
| **bettercap** | Network attack framework | `pkg install bettercap` | `bettercap` |
| **ettercap** | MITM framework | Manual install | `ettercap -T -M arp:remote /target//` |
| **hping3** | Packet crafting | Manual install | `hping3 -S -p 80 target` |
| **traceroute** | Route tracing | `pkg install traceroute` | `traceroute target` |
| **whois** | Domain info | `pkg install whois` | `whois target.com` |
| **dig** | DNS enumeration | `pkg install dnsutils` | `dig target.com ANY +short` |

---

## Category 7: Traffic Analysis (6 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **tcpdump** | Packet capture | `pkg install tcpdump` | `tcpdump -i wlan0 -w capture.pcap` |
| **wireshark** | GUI traffic analysis | Termux:X11 required | `wireshark` |
| **tshark** | CLI Wireshark | `pkg install tshark` | `tshark -i wlan0` |
| **ngrep** | Network grep | `pkg install ngrep` | `ngrep -d any 'password'` |
| **mitmproxy** | HTTP/HTTPS interceptor | `pkg install mitmproxy` | `mitmproxy -p 8080` |
| **ettercap** | ARP spoofing/sniffing | Manual install | `ettercap -G` |

---

## Category 8: Wireless Tools (5 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **aircrack-ng** | WiFi cracking suite | proot-distro → `apt install aircrack-ng` | `airmon-ng start wlan0` |
| **wifite** | WiFi auditor | `git clone github.com/derv82/wifite2` | `wifite` |
| **fluxion** | WiFi phishing | `git clone github.com/FluxionNetwork/fluxion` | `./fluxion.sh` |
| **reaver** | WPS attack | Manual install | `reaver -i wlan0mon -b BSSID` |
| **kismet** | WiFi sniffer/IDS | proot-distro → `apt install kismet` | `kismet` |

---

## Category 9: Forensics & Crypto (7 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **binwalk** | Firmware analysis | `pkg install binwalk` | `binwalk firmware.bin` |
| **foremost** | File carving | proot-distro → `apt install foremost` | `foremost -i image.dd` |
| **testdisk** | Data recovery | `pkg install testdisk` | `testdisk` |
| **exiftool** | Metadata extraction | `pkg install exiftool` | `exiftool image.jpg` |
| **steghide** | Steganography | `pkg install steghide` | `steghide extract -sf file.jpg` |
| **gpg** | Encryption/signing | `pkg install gnupg` | `gpg --gen-key` |
| **openssl** | Crypto toolkit | `pkg install openssl` | `openssl enc -aes-256-cbc -in file` |

---

## Category 10: Mobile Testing (5 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **androguard** | APK analysis | `pip install androguard` | `androguard decompile app.apk` |
| **apktool** | APK decompile | Manual install | `apktool d app.apk` |
| **dex2jar** | DEX to JAR converter | Manual install | `d2j-dex2jar app.dex` |
| **frida** | Dynamic instrumentation | `pip install frida-tools` | `frida -U -l script.js app` |
| **mobsf** | Mobile security framework | `git clone github.com/MobSF/Mobile-Security-Framework-MobSF` | `python manage.py runserver` |

---

## Category 11: Utilities (8 tools)

| Tool | Description | Install | Command |
|------|-------------|---------|---------|
| **yt-dlp** | YouTube/video downloader | `pip install yt-dlp` | `yt-dlp URL` |
| **gallery-dl** | Social media downloader | `pip install gallery-dl` | `gallery-dl URL` |
| **ffmpeg** | Media converter | `pkg install ffmpeg` | `ffmpeg -i input.mp4 output.avi` |
| **spotdl** | Spotify downloader | `pip install spotdl` | `spotdl "track_url"` |
| **httrack** | Website copier | proot-distro → `apt install httrack` | `httrack URL` |
| **wget** | File downloader | `pkg install wget` | `wget URL` |
| **curl** | HTTP client | `pkg install curl` | `curl -s URL` |
| **python http.server** | File sharing | Built-in Python | `python -m http.server 8000` |

---

## Grand Total: ~105 Unique Tools

*All tools are open source. Use ethically and legally.*

*Last updated: 2026-03-29 — Strategy Over Impulse — github.com/philfesters*
