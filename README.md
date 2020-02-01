# My linux configuration

<img align="left" height="150" width="140" src="logo.png">

Welcome to my `Linux Configuration`. This repo holds not only different useful
shell scripts but also wallpapers, themes, color schemes, dotfiles... All
together, they enable me to work in a simple, fast and personal way. 

```shell
echo 'Welcome to LinuxConf'
```

## Wolf based theme

Wolfs are my favourite animals, that is the reason behind wallpapers selection.
Colorful ones are for main desktop while the black acts as background for your
preferred terminal emulator:

<img align="left" height="140" width="220" src="wallpapers/wolf_summer.jpg">
<img align="left" height="140" width="220" src="wallpapers/wolf_winter.jpg">
<img align="left" height="140" width="220" src="wallpapers/bash_wallpaper.png">

## Elegant wolf theme

By making use of `Marwaita Osx Dark` theme in combination with `Flat Remix
Icons` and `Plank` it os possible to finally get a beautifull environment:

## XFCE4 Terminal + OhMyZSH + dotfiles

By making use of the popular XFCE terminal combined with the "oh my zsh" one
can achieve good looking results while having a huge efficiency desktop
development.

User will find specific configuration files for each of the previous tools
under the `/dotfiles` directory

Furthermore, you should install the following tools: they are amazing!

- [x] Lazygit: https://github.com/jesseduffield/lazygit
- [x] Ranger: https://ranger.github.io/

## Custom commands

The `/bin` holds different useful custom commands that can be installed
and used from anywhere on your system. Follow these steps:

1. Run `echo $PATH` and check out the available path directories
2. Your `usr/local/bin` should be included in this path by default
3. Just copy with `sudo` priviledges all the commands to previous path folder

## How to recreate this environment

In order to get all this configuration in your local machine, please follow the
next steps:

1. Download or directly clone this repository.
2. Create a `.themes` and `.icons` folder in your `home/user_name`.
3. Unzip themes and icons in previous corresponding folders.
4. Copy all `.dotfiles` in your `home/user_name`.
5. Enjoy!
