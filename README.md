# My personal dot files

Contains everything to setup my developer environment.

## How does this work?

[winget configure](https://learn.microsoft.com/en-us/windows/package-manager/winget/configure) installs all tools and applies all settings in one command. [chezmoi](https://www.chezmoi.io/) manages dotfiles across machines, keeping config files in sync via this GitHub repository.

**Tools installed:** Git, PowerShell 7, .NET SDK, Windows Terminal, Oh My Posh, Nushell, fzf, zoxide, carapace, mise, chezmoi, GitHub CLI, Visual Studio, VS Code, Bruno, JetBrains Toolbox, Azure CLI, and more.

**Config files managed:** `.gitconfig`, PowerShell profile, Nushell config, Windows Terminal settings, Oh My Posh theme, winget settings.

## Setting up a new machine

Open an elevated PowerShell and run:

```powershell
$url = "https://raw.githubusercontent.com/TechWatching/dotfiles/main/dot_config/configuration.winget"
Invoke-WebRequest -Uri $url -OutFile "$env:TEMP\configuration.winget"
winget configure -f "$env:TEMP\configuration.winget"
```

This single command will:
1. Install all tools and applications via winget
2. Run `chezmoi init --apply TechWatching` to pull this repo and apply all dotfiles to their correct locations

### Step 2 — Apply Visual Studio workloads

After `winget configure` completes (chezmoi has already run by then), apply the VS workloads:

```powershell
& "C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe" modify `
  --installPath "C:\Program Files\Microsoft Visual Studio\2026\Enterprise" `
  --config "$env:USERPROFILE\.local\share\chezmoi\vs-configs\.vsconfig" `
  --passive --norestart
```

## Day-to-day usage

### Sync latest dotfiles from GitHub
```
chezmoi update
```

### Edit a config file
```
chezmoi edit ~/.gitconfig
chezmoi apply
```

### Push changes to GitHub
```
cd ~/.local/share/chezmoi
git add -A && git commit -m "..." && git push
```

## Repository structure

```
dot_config/
  configuration.winget          # winget DSC config (machine setup)
  ohmyposh/
    dot_oh-my-posh.omp.json     # Oh My Posh theme → ~/.config/ohmyposh/
dot_gitconfig                   # → ~/.gitconfig
AppData/
  Roaming/nushell/              # → ~/AppData/Roaming/nushell/
  Local/Packages/
    Microsoft.WindowsTerminal*/ # → Windows Terminal settings
Documents/PowerShell/           # → PowerShell profile
vs-configs/                     # VS 2019/2022 installer configs (not managed by chezmoi)
scripts/                        # Legacy setup scripts (not managed by chezmoi)
```

## Using this repository

This repository contains my personal tools, config files, and preferences — you should not use it as-is. You can fork it, adapt the scripts and settings to your needs, and use it to set up your own development machine.

## Disclaimer

The code in this repository is provided as-is, without any warranties of any kind. Use it at your own risk.



