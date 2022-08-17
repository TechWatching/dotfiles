Disable-UAC
$Boxstarter.AutoLogin=$false
# Install git and clone repository containing scripts and config files
# TODO: see how to improve install that by using chezmoi (cinst -y chezmoi)
cinst -y git --params "/GitOnlyOnPath /NoShellIntegration /WindowsTerminal"
RefreshEnv
git clone https://github.com/TechWatching/dotfiles.git "$env:USERPROFILE\dotfiles"
# Git configuration
Remove-Item -Path "$env:USERPROFILE\.gitconfig" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\.gitconfig" -Target "$env:USERPROFILE\dotfiles\config\git\.gitconfig"
# TODO: configure git signature

# Winget configuration
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json" -Force
New-Item -ItemType SymbolicLink -Path "$env:USERPROFILE\AppData\Local\Packages\Microsoft.DesktopAppInstaller_8wekyb3d8bbwe\LocalState\settings.json" -Target "$env:USERPROFILE\dotfiles\config\winget\settings.json"

#--- Enable developer mode on the system ---
Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1

#--- Setting up Windows ---
. "$env:USERPROFILE\dotfiles\scripts\FileExplorerSettings.ps1"
. "$env:USERPROFILE\dotfiles\scripts\RemoveDefaultApps.ps1"
. "$env:USERPROFILE\dotfiles\scripts\Tools.ps1"
. "$env:USERPROFILE\dotfiles\scripts\IDEs.ps1"

# TODO: install WSL2 / Ubuntu
# cinst -y Microsoft-Windows-Subsystem-Linux -source windowsfeatures
# cinst -y VirtualMachinePlatform -source windowsfeatures
# wsl --set-default-version 2
# choco install wsl2 --params "/Version:2 /Retry:true"

# TODO: Docker
# winget install -e -h --id suse.RancherDesktop

# // windowsfeatures (Windows Sandbox, .NET Framework)
# // Taskbar (Set-BoxstarterTaskbarOptions)

#--- reenabling critial items ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula
