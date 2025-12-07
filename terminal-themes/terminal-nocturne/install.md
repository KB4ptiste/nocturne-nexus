# Installation Instructions for Nocturne Nexus Windows Terminal Scheme v1.0

This document covers **two installation methods**: _Automated_ (scripted) and _Manual_. Choose the one that fits your environment.

---

## Prerequisites

- Using Windows 10/11 with Windows Terminal installed.
- Access to your user profile; administrative rights are **not** required in most cases.
- Backup of your current settings (see section “Backup & Revert”).

---

## Path to settings.json

On standard installs, the settings file is located at: C:\Users\<YourUserName>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json

If you use a different version/distribution of Windows Terminal, locate the appropriate `settings.json` via the “Open JSON file” option in Windows Terminal Settings.

---

## Automated Installation (PowerShell script)

Recommended for users comfortable with running PowerShell scripts.

1. Place the following files in the same folder:
   - `Nocturne-WindowsTerminal-scheme-v1.0.json`
   - `install-NocturneTerminal.ps1`
2. Open PowerShell **as the same user who uses Windows Terminal**.
3. Change directory to the folder containing the files.
4. Execute:
   ```powershell
   .\install-NocturneTerminal-v1.0.ps1
   ```
5. The script will perform the following:
   - Back up the existing settings.json (e.g., settings.json.bak).
   - Merge or insert the Nocturne-WindowsTerminal-scheme-v1.0.json scheme into the "schemes" array.
   - Remove any existing scheme named "Nocturne" (to avoid duplicates).
   - Set "colorScheme": "Nocturne Nexus" under "profiles":{"defaults":{…}} so the scheme becomes active.
   - Write the updated JSON back to settings.json.
   - Save changes and exit.
6. Restart Windows Terminal (close all windows, then open again). The Nocturne Nexus palette should now be active.

### Common failure points & troubleshooting

- JSON parse error: If your settings.json is malformed (e.g., extra trailing commas), the script may fail. Check manually.
- Wrong file path: The script uses the default path above. If your Terminal uses a different path, edit the script to match.
- Existing scheme with same name: The script removes duplicates, but if you manually inserted another “Nocturne Nexus”, choose a unique name or remove the conflict.
- Terminal still showing old scheme: Ensure you saved and closed all Terminal sessions. Sometimes you need to close Terminal and reopen for changes to apply.

---

## Manual Installation

For users who prefer not to run scripts or need to inspect/modify the settings yourself.

1.  Download or locate Nocturne-WindowsTerminal-scheme-v1.0.json.
2.  Open Windows Terminal → dropdown arrow ▾ → Settings → bottom-left “Open JSON file”.
3.  In settings.json, find (or add) the "schemes" array If it doesn't exist, add:
    "schemes": []
4.  Inside the "schemes" array, paste the following object:
    {
    "name": "Nocturne Nexus",
    "cursorColor": "#80FFEA",
    "selectionBackground": "#3E2E50",
    "background": "#271E32",
    "foreground": "#D8C5EE",
    "black": "#241B2F",
    "red": "#FF9580",
    "green": "#8AFF80",
    "yellow": "#FFCA80",
    "blue": "#B399FF",
    "purple": "#FF80BF",
    "cyan": "#80FFEA",
    "white": "#D8C5EE",
    "brightBlack": "#3E2E50",
    "brightRed": "#FFB3A0",
    "brightGreen": "#A8FF9A",
    "brightYellow": "#FFDE9E",
    "brightBlue": "#C8A8FF",
    "brightPurple": "#FF99D1",
    "brightCyan": "#9AFFF0",
    "brightWhite": "#F5ECFF"
    }
5.  Next, locate the "profiles" section in settings.json. Typically you’ll see:
    "profiles": {
    "defaults": {
    // ...
    },
    "list": [
    // individual profile objects
    ]
    }
6.  To apply the scheme globally (all profiles), under "defaults" add:
    "colorScheme": "Nocturne Nexus"
    If you prefer the scheme on one specific profile only (not all), find that profile object in profiles.list and add "colorScheme": "Nocturne Nexus" there instead.
7.  Save settings.json. Close all open Terminal windows and reopen them to apply changes.

### Manual troubleshooting

- If Terminal refuses to open, use your backup settings.json.bak to revert.
- Ensure no trailing commas and matching braces/brackets in JSON.
- Confirm that the scheme’s "name" matches exactly the string used in "colorScheme".
- If nothing changes visually, verify you edited the correct settings.json path (see “Path to settings file” above).
- If colors look wrong (e.g., selection isn’t applied), check the selectionBackground value and make sure it’s a valid hex #RRGGBB.

---

## Uninstall / Revert

If you want to remove the scheme:

- Remove the scheme object with "name": "Nocturne Nexus" from the "schemes" array.
- Remove "colorScheme": "Nocturne Nexus" from "profiles.defaults" or the specific profile.
- Save settings.json, restart Windows Terminal. It will revert to default colors.

---

## Summary

- Use Automated installation if you want a quick, scriptable deployment.
- Use Manual installation if you prefer full control or need to inspect everything.
- Always back up your settings JSON before modifying.
- After installing, close & reopen Terminal to see changes.
