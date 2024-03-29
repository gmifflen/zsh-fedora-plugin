# zsh-fedora-plugin

This plugin alias some dnf options to shorter alternatives, I know there may already be something like this, but this is made how I want it
 
Oh My Zsh Install: 
clone the repo to the oh-my-zsh/custom/plugins directory
```zsh
 git clone https://github.com/gmifflen/zsh-fedora-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fedora
```
then add 'fedora' to your ~/.zshrc
```zsh
plugins=(
  ...
  fedora
  )
```
Manual Install:
clone the repo to any directory of your choosing, default is ~/.config/zsh-fedora-plugin
```zsh
git clone https://github.com/gmifflen/zsh-fedora-plugin.git ~/.config/zsh-fedora-plugin
```
then add this to your ~/.zshrc
```
source ~/.config/zsh-fedora-plugin/fedora.zsh
```


# Features

| Alias        | Command                                | Description                                                            |
|--------------|----------------------------------------|------------------------------------------------------------------------|
| dnfin        | `sudo dnf install`                     | Installs the specified packages from the repositories                  |
| dnfse        | `dnf search`                           | Searches the repositories for a specified package                      |
| dnfrm        | `sudo dnf remove`                      | Uninstalls the specified packages from your system                     |
| dnfupd       | `dnf check-update`                     | Checks for available updates for installed packages                    |
| dnfupg       | `sudo dnf upgrade`                     | Syncs with your DNF package repositories and upgrades packages         |
| dnfif        | `dnf info`                             | Displays detailed information about a specified package                |
| dnfre        | `sudo dnf reinstall`                   | Reinstalls the specified package, restoring its default settings       |
| dnfcln       | `dnf clean`                            | Cleans up cached DNF files from your system to free up space           |
| dnfdg        | `sudo dnf downgrade`                   | Downgrades the specified package to an earlier version                 |
| dnfhist      | `dnf history`                          | Shows a record of all actions performed by DNF                         |
| dnfls        | `dnf list`                             | Lists all the packages available in your repositories                  |
| dnfrepif     | `dnf repoinfo`                         | Displays information about the configured repositories in DNF          |
| dnfrepls     | `dnf repolist`                         | Lists all the repositories currently configured on your system         |
| dnfrq        | `dnf repoquery`                        | Queries information from repositories without altering your system     |
| dnfsh        | `sudo dnf shell`                       | Opens an interactive DNF shell session for executing multiple commands |
| dnfupif      | `dnf updateinfo`                       | Displays informatoin about updates available for installed packages    |
| dnfmin       | `sudo dnf upgrade-minimal`             | Upgrades, but only if the upgrade fixes a bug or security issue        |
| dnflsi       | `dnf list --installed`                 | Lists all packages that are currently installed on your system         |
| dnflsav      | `dnf list --available`                 | Lists all packages that are available for installation from repos      |
| dnf_full_upgrade | `dnfupd && dnfupg && dnfcln`       | Updates, Upgrades, then Cleans packages                                |

## License

zsh-fedora-plugin is released under the [MIT license](LICENSE)

### Inspired by the [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) [Arch Linux Plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux)

Should probably be named zsh-dnf-plugin, but I only use fedora and endevour¯\\_(ツ)_/¯
