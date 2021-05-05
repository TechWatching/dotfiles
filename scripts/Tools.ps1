# browsers
cinst -y googlechrome
cinst -y firefox

# common tools
cinst -y 7zip
cinst -y paint.net
cinst -y screentogif
cinst -y windirstat
cinst -y zoomit
cinst -y pandoc
winget install -e -h --id Microsoft.Whiteboard -s msstore
winget install -e -h --id Microsoft.Teams
winget install -e -h --id Microsoft.Office
winget install -e -h --id Microsoft.PowerToys

# dev tools
cinst -y repoz
# iwr -useb get.scoop.sh | iex
# Powershell install
winget install -e -h --id Microsoft.PowerShell
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Install-Module posh-git -Scope CurrentUser -Force
Install-Module oh-my-posh -Scope CurrentUser -Force
Install-Module posh-git
Install-Module oh-my-posh
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

# # azure tools 
winget install -e -h --id Microsoft.AzureCLI
winget install -e -h --id Microsoft.AzureCosmosEmulator
winget install -e -h --id Microsoft.AzureDataStudio
winget install -e -h --id Microsoft.azure-iot-explorer
winget install -e -h --id Microsoft.AzureStorageExplorer
cinst -y pulumi
# TODO : install azurite as well

# # blogs
# wyam
# netlify
# statiq
