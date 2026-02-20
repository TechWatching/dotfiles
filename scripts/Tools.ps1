# ---------------------------------------------- #
# Browsers  ------------------------------------ #
# ---------------------------------------------- #
cinst -y googlechrome
cinst -y firefox

# ---------------------------------------------- #
# Common tools  --------------------------------- #
# ---------------------------------------------- #
cinst -y 7zip
cinst -y paint.net
cinst -y screentogif
cinst -y zoomit
winget install -e -h --id WinDirStat.WinDirStat
winget install -e -h --id Microsoft.BingWallpaper
winget install -e -h --id Obsidian.Obsidian
winget install -e -h --id JohnMacFarlane.Pandoc
winget install -e -h --id Microsoft.Whiteboard -s msstore
winget install -e -h --id Microsoft.PowerToys
# Already  installed by default
# winget install -e -h --id Microsoft.Teams
# winget install -e -h --id Microsoft.Office
winget install -e -h --id Logitech.Options
winget install -e -h --id Dell.DisplayManager

# ---------------------------------------------- #
# Dev tools  ----------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id AndreasWascher.RepoZ
winget install -e -h --id CoreyButler.NVMforWindows
# iwr -useb get.scoop.sh | iex


# ---------------------------------------------- #
# Prompt  -------------------------------------- #
# ---------------------------------------------- #
pwsh -Command { Install-Module posh-git -Scope CurrentUser -Force}
winget install -e -h --id JanDeDobbeleer.OhMyPosh

# ---------------------------------------------- #
# PowerShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.PowerShell
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Remove-Item -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -Target "$env:USERPROFILE\dotfiles\config\powerShell\Microsoft.PowerShell_profile.ps1"

# ---------------------------------------------- #
# NuShell  ---------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Nushell.Nushell
# saves an initialization script to ~/.oh-my-posh.nu that will be used in Nushell config file
oh-my-posh init nu --config "$env:USERPROFILE\dotfiles\config\prompt\.oh-my-posh.omp.json"
Remove-Item -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Roaming\nushell\config.nu" -Target "$env:USERPROFILE\dotfiles\config\nu\config.nu"
# config auto complete dotnet / nuke / ...

# ---------------------------------------------- #
# Windows Terminal ----------------------------- #
# ---------------------------------------------- #
# Windows Terminal (stable + preview) install with Cascadia Code PL font
winget install -e -h --id Microsoft.WindowsTerminal -s msstore
winget install -e -h --id Microsoft.WindowsTerminalPreview -s msstore
cinst -y cascadiacodepl
# Windows terminal configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\dotfiles\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState\"
# Windows terminal preview configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\windowsTerminal\settings.json"
cp "$env:USERPROFILE\dotfiles\config\windowsTerminal\icons\*" "$env:USERPROFILE\AppData\Local\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\RoamingState\"

# ---------------------------------------------- #
# Azure tools  --------------------------------- #
# ---------------------------------------------- #
winget install -e -h --id Microsoft.AzureCLI
winget install -e -h --id Microsoft.AzureCosmosEmulator
winget install -e -h --id Microsoft.AzureDataStudio
winget install -e -h --id Microsoft.azure-iot-explorer
winget install -e -h --id Microsoft.AzureStorageExplorer
winget install -e -h --id Pulumi.Pulumi
winget install -e -h --id Microsoft.AzureFunctionsCoreTools
# Azurite will be installed through vscode extension


# ---------------------------------------------- #
# Blog tools  ---------------------------------- #
# ---------------------------------------------- #
# wyam
# netlify
# statiq
