# My personal dot files

Contains everything to setup my developer environment.

> Inpired by [Microsoft/windows-dev-box-setup-scripts](https://github.com/Microsoft/windows-dev-box-setup-scripts) and other repositories using [boxstarter](https://boxstarter.org/) to setup their developer machine.

## How does this work?

[Boxstarter](https://boxstarter.org/) is used to avoid interruptions during installation and to launch the installation directly from an [URL](https://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/TechWatching/dotfiles/features/initialization/boxstarter.ps1) without manually downloading any software before. 

The setup is automated using [PowerShell](https://docs.microsoft.com/en-us/powershell/) scripts.

Software is installed using 2 different package managers for Windows: 
- [Chocolatey](https://chocolatey.org/)
- [Windows Package Manager](https://docs.microsoft.com/en-us/windows/package-manager/) aka winget

I have chosen to use mainly winget to install tools, except when packages were only available on Chocolatey on more up-to-date on Chocolatey.

One of the firsts steps of the bootstarter.ps1 script is to install git and clone this repository. It uses it to call the other scripts in the repository and retrieve the settings files.

Symbolic links are used to make the different settings files on the machine being configured to point to the settings files contained in this git repository. This enables the files to be commited easily when settings are changed.

## Limitations

The script does not currently handle by-passing already installed software or upgrading it (waiting for winget to handle properly these scenarios). If run multiple times, the tools will be re-installed.

This way of doing things works great to setup a development environment on a new machine. Syncing changes between different machines can be more difficult to manage.

As this repository is public, there is no current way to keep some files private or use secrets.

The tool [chezmoi](https://www.chezmoi.io/#considering-using-chezmoi) might help to solve the 2 last limitations mentionned here.


## Using this repository 

This repository contains the tools I like to use, my config files, my preferences... so you should not use it as-is. You can however take inspiration from it, fork this repository, modify the scripts and settings files with your needs, and use it to set up your development machine. 

Only a click on the **Install** link below is needed to kaunch the installation. Please make sure you have updated the link with the corresponding path on your fork.

[Install](https://boxstarter.org/package/nr/url?https://raw.githubusercontent.com/TechWatching/dotfiles/features/initialization/boxstarter.ps1)

## Disclaimer

The code in this repository is provided as-is, without any warranties of any kind. Use it at your own risk.



