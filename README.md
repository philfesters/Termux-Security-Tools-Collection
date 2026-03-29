# FEZZY STATION 🛸

**Grant Fezzy Festers · Ravensmead · Cape Town · Strategy Over Impulse**

> *They posted it thinking it was safe. We pulled the whole page before the wifi even blinked.*

A private media intelligence command centre living inside **Termux on Android**. No desktop. No root. No subscriptions. No ads. No tracking. **No one knowing you were ever there.**

Built by a self-taught developer on a rootless Android phone — one portal at a time — alongside Claude AI.

---

## What It Is

Fezzy Station is a Bash script (`fezzy_station_v34.sh`) that launches a full-featured media operations dashboard directly in Termux. Paste a URL from 1000+ platforms — music lands as MP3 with artwork sealed in. Video pulls HQ. Galleries ripped clean. Books free. Social profiles drained. All metadata stripped.

No GUI. No dependencies beyond what runs on stock Termux. **Just a terminal and the will to build.**

---

## Portals

| # | Portal | What It Does |
|---|--------|-------------|
| 1 | **Gallery Portal** | gallery-dl · image ripper · cookie auth · bulk · username drain |
| 2 | **Music Portal** | yt-dlp · MP3 · artwork embed · SoundCloud · Bandcamp · playlists |
| 3 | **Video Portal** | HQ merge · TikTok · Instagram · Twitter · 1000+ sites |
| 4 | **Web Grab** | wget · offline mirror · nano · minimal · full site |
| 5 | **Music Search** | No URL needed · type artist · top 10 · SoundCloud · Audiomack · Bandcamp |
| 6 | **Tool Portal** | ncdu · ranger · htop · battery · storage · ffmpeg convert |
| 7 | **Juice WRLD** | 999 forever · unreleased vault · all platforms · archive protected |
| 8 | **Social Portal** | Profile drain · OSINT · Sherlock · reverse image · username search · bulk |
| 9 | **Adult Portal** | 18+ · gallery-dl · erome · pornpics · rule34 · gelbooru · performers · categories |
| 10 | **Books Portal** | Auto-download by title · Gutenberg · Anna's Archive · 70,000+ free books |
| 11 | **Hacker Portal** | nmap · sherlock · whois · sqlmap · wfuzz · theHarvester · holehe · anubis |

---

## Tech Stack

```
Termux (Android 14)     —  rootless terminal environment
yt-dlp                  —  video and audio downloader · 1000+ sites
gallery-dl              —  image and gallery ripper
ffmpeg                  —  audio/video conversion and merging
Python 3 + pip          —  tool runtime
wget · curl             —  HTTP fetching and site mirroring
nmap                    —  network scanner
sherlock                —  username OSINT across 300+ platforms
sqlmap                  —  SQL injection testing
wfuzz                   —  web fuzzer
theHarvester            —  email and subdomain recon
holehe                  —  email registration checker
anubis                  —  subdomain enumeration
ranger · ncdu · htop    —  system and file management
gum                     —  terminal UI (spin + style only)
Claude AI               —  build partner
```

---

## Deploy

```bash
# Copy script to home
cp /sdcard/Download/fezzy_station_v34.sh ~/fezzy_station_v34.sh

# Syntax check before firing
bash -n ~/fezzy_station_v34.sh

# Add to ~/.bashrc (nano only for .bashrc)
nano ~/.bashrc
# Add: source ~/fezzy_station_v34.sh

# Launch
source ~/.bashrc
dl
```

---

## Shortcuts

| Alias | Action |
|-------|--------|
| `dl` | Open main dashboard |
| `sc` | Shortcuts guide |
| `1` – `11` | Jump straight to portal |
| `gallery` · `music` · `video` | Direct portal launch |
| `books` · `hacker` · `adult` | Direct portal launch |
| `jw` | Juice WRLD portal direct |

---

## Rules (Critical)

- Use **vim** for `.sh` files — never nano for scripts
- `gum choose` and `gum input` are **broken on Android** — never use them
- **Never touch:** FEZZY ASCII art · welcome screen · rotating quotes · Control Hub
- Always `bash -n` syntax check before deploy
- Bump version every session

---

## Files

```
fezzy_station_v34.sh      —  main Termux bash script
fezzy_website.html        —  GitHub Pages site (this repo)
fezzy_station_app.html    —  mobile PWA launcher
```

---

## The Mascot

**Bojack** — Lab × Husky mix · Security Daemon · Always Watching · Never Tells 🐾

---

## The Operator

```
NAME      Grant Fezzy Festers
CALLSIGN  FEZZY 👽
LOCATION  Ravensmead · Cape Town · South Africa
PLATFORM  Honor X5b · Android 14 · Termux
CONTACT   073 930 1858
BUILT WITH Claude AI 🤖
PHILOSOPHY Strategy Over Impulse (SOI)
```

---

## Philosophy

> **Strategy Over Impulse.**
> Build first. Think clean. Never rush the deploy.
> 999 ♾

---

*No root required. No desktop needed. Built from a phone in Ravensmead.*
*Constructed alongside Claude AI · one portal at a time.*
