# zsh-fedora-plugin

This plugin alias some dnf options to shorter alternatives
 
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

| Alias        | Command                                | Description                                                      |
|--------------|----------------------------------------|------------------------------------------------------------------|
| dnfin        | `sudo dnf install`                     | TBD                                                              |
| dnfse        | `sudo dnf search`                      | TBD                                                              |
| dnfrm        | `sudo dnf remove`                      | TBD                                                              |
| dnfupd       | `sudo dnf check-update`                | TBD                                                              |
| dnfupg       | `sudo dnf upgrade`                     | TBD                                                              |
| dnfif        | `sudo dnf info`                        | TBD                                                              |
| dnfre        | `sudo dnf reinstall`                        | TBD                                                              |
| dnfcln        | `sudo dnf clean`                        | TBD                                                              |
| dnfdg        | `sudo dnf downgrade`                        | TBD                                                              |
| dnfhist        | `sudo dnf history`                        | TBD                                                              |
| dnfls        | `sudo dnf list`                        | TBD                                                              |
| dnfrepif        | `sudo dnf repoinfo`                        | TBD                                                              |
| dnfrepls        | `sudo dnf repolist`                        | TBD                                                              |
| dnfrq        | `sudo dnf repoquery`                        | TBD                                                              |
| dnfsh        | `sudo dnf shell`                        | TBD                                                              |
| dnfupif        | `sudo dnf updateinfo`                        | TBD                                                              |
| dnfmin        | `sudo dnf upgrade-minimal`                        | TBD                                                              |
| dnflsi        | `sudo dnf list --installed`                        | TBD                                                              |
| dnflsav        | `sudo dnf list --available`                        | TBD                                                              |

## License

zsh-fedora-plugin is released under the [MIT license](LICENSE)

### Inspired by the [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) [Arch Linux Plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux)

Should probably be named zsh-dnf-plugin, but I only use fedora ¯\\_(ツ)_/¯
