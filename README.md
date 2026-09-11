# DFIR Capstone: Data Exfiltration Investigation

## Scenario
Anonymous report of a user potentially exfiltrating data. A disk image was provided for analysis. The goal was to find four pieces of hidden evidence.

## Tools Used
- Linux CLI: ls, find, grep, file, strings, cat
- Steganography: steghide
- Password Cracking: fcrackzip + rockyou.txt
- Image Analysis: exiftool, binwalk

## Methodology
1. Initial triage: searched for hidden files, checked file types.
2. Saved Emails: found a hint leading to a steghide password.
3. Hidden ZIP: cracked with fcrackzip using a dictionary attack.
4. Fake Extensions: found PNG disguised as XML, JPEG disguised as MP3.
5. Steganography: extracted hidden data from JPEGs.

## Findings (Redacted)
- Part 1: extracted employee dump.
- Part 2: steghide from JPEG.
- Part 3: hidden PNG.
- Part 4: embedded in CSS.

## Lessons Learned
- Always check hidden files and fake extensions.
- Combine CLI and GUI tools.
- Document everything.

## Scripts
- triage.sh: basic triage helper.
## Usage
To run the triage script on a target directory:
```bash
./triage.sh /path/to/suspect/directory
