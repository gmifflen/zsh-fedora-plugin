# zsh-fedora-plugin

This plugin alias some dnf options to shorter alternatives

To use, run the command 
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

# Features

| Alias        | Command                                | Description                                                      |
|--------------|----------------------------------------|------------------------------------------------------------------|
| dnfin        | `sudo dnf install`                     | TBD                                                              |
| dnfse        | `sudo dnf search`                      | TBD                                                              |
| dnfrm        | `sudo dnf remove`                      | TBD                                                              |
| dnfupd       | `sudo dnf check-update`                | TBD                                                              |
| dnfupg       | `sudo dnf upgrade`                     | TBD                                                              |

## License

Oh My Zsh is released under the [MIT license](LICENSE.txt).

### Inspired by the [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh) [Arch Linux Plugin](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux)
