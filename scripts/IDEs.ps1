# choco install -y visualstudio2022enterprise --package-parameters="'--config ~/vs2022/.vsconfig'" --execution-timeout 5400

winget install -e -h --id Microsoft.VisualStudio.2022.Enterprise --silent --override "--wait --quiet --addProductLang En-us --config $env:USERPROFILE\dotfiles\config\vs2022\.vsconfig"
# For simplicity, extensions will not be installed from here but manually selected from Roaming Extension Manager menu once logged in with personnalization account
# Only exception is ozcode extension which requires and independent installer and therefore cannot be installed from VS.
choco install -y ozcode-vs2022

# Chocolatey version is more up-o-date than winget version
choco install -y vscode

# Used to install manually JetBrains IDEs and tools (Rider, .NET Tools)
winget install -e -h --id JetBrains.Toolbox