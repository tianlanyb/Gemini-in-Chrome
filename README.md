# Gemini in Chrome

One-click script to enable Chrome's built-in Gemini AI features for non-US users.

## Quick Start

### macOS / Linux

```bash
curl -fsSL https://raw.githubusercontent.com/appsail/Gemini-in-Chrome/main/install.sh | bash
```

### Windows

Open PowerShell and run:

```powershell
irm https://raw.githubusercontent.com/appsail/Gemini-in-Chrome/main/install.ps1 | iex
```

## What It Does

1. ✅ Checks if Chrome is running (prompts you to close it)
2. 💾 Backs up your config (`Local State.bak`)
3. 🔧 Patches these settings:
   - `is_glic_eligible`: `false` → `true`
   - `variations_country`: → `us`
   - `variations_permanent_consistency_country`: → `us`
4. ✓ Verifies changes were applied

## Restore Original Config

**macOS:**
```bash
mv ~/Library/Application\ Support/Google/Chrome/Local\ State.bak \
   ~/Library/Application\ Support/Google/Chrome/Local\ State
```

**Linux:**
```bash
mv ~/.config/google-chrome/Local\ State.bak \
   ~/.config/google-chrome/Local\ State
```

**Windows PowerShell:**
```powershell
Move-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\Local State.bak" `
          -Destination "$env:LOCALAPPDATA\Google\Chrome\User Data\Local State" -Force
```

## Safety

- Original config is backed up before any changes
- Only modifies local Chrome settings
- No data uploaded, no network access (except downloading the script)
- Easily reversible
- Unofficial, open source, use at your own risk

## Config Paths

| OS | Path |
|----|------|
| macOS | `~/Library/Application Support/Google/Chrome/Local State` |
| Linux | `~/.config/google-chrome/Local State` |
| Windows | `%LOCALAPPDATA%\Google\Chrome\User Data\Local State` |

## Issues

Found a bug? [Open an issue](https://github.com/appsail/Gemini-in-Chrome/issues).

## License

MIT
