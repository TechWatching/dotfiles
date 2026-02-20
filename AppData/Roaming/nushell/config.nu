# config.nu
#
# Installed by:
# version = "0.106.1"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R


# Remove welcome banner
$env.config.show_banner = false 

# Default editor for config file
$env.config.buffer_editor = "code"

# Custom theme
use C:\tools\nu_scripts\themes\nu-themes\cobalt2.nu
$env.config = ($env.config | merge {color_config: (cobalt2)})

# Configure prompt
source ~/.oh-my-posh.nu

# Completions
source ~/.cache/carapace/init.nu
source ~/.zoxide.nu

# Custom aliases
use C:\tools\nu_scripts\aliases\git\git-aliases.nu *

def dcleanup [] { ls **/bin **/obj | each {|it| rm -r $it.name } }

# Custom functions
def gha [...args] {
  gh api ...$args | from json
}

# Custom environment variables
# $env.DOTNET_ASPIRE_CONTAINER_RUNTIME="podman"