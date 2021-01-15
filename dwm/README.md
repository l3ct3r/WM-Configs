# Dynamic Window Manager (DWM):
* DWM Configuration 

## Required Tools: 
* git 
* Terminal  
* Text Editor (VIM/Emacs/Nano)
* Web Browser (For online manual) 

## Links: 
* [DWM on Arch](wiki.archlinux.org/index.php/Dwm)
* [dwm](https://dwm.suckless.org/)
* [VIM](https://www.vim.org/)
* [qutebrowser](https://qutebrowser.org/)

## Table of contents
* [General info](#general-info)
* [Used Tools](#tools)
* [Downloading Tools](#doqnload-tools)
* [Setup](#setup)

## General info
This is configuration of Dynamic Window Manager (DWM).

## Used Tools
* [st-Terminal](https://st.suckless.org/)
* [Dmenu](https://dwm.suckless.org/)
* [Rofi](https://github.com/davatorium/rofi)

## Downloading Tools 
* wget https://dl.suckless.org/dwm/dwm-(vesrion).tar.gz
* wget https://dl.suckless.org/st/st-(version).tar.gz
* wget https://dl.suckless.org/tools/dmenu-(version).tar.gz

## Setup 
Setting up DWM(Arch based distributions):
```
first, you will need to install X server & git
# pacman -S xorg-xinit xorg git

change directory to /usr/src because you want this to apply to all users
$ cd /usr/src

clone suckless software such as dwm (window manager), st (recommended terminal), and dmenu (simple application menu)
# git clone git://git.suckless.org/dwm
# git clone git://git.suckless.org/st
# git clone git://git.suckless.org/dmenu

change directory into each one, and compile them
$ cd dwm ## do this step also with st and dmenu
# sudo make clean install

add a new user that is under the users group
# useradd -m -g users dwmusr
# passwd dwmusr

logout, login as new user and execute
$ <favorite text editor> .xinitrc or vim .xinitrc
    from there, add "exec dwm" into the file, save, and exit

start your session with:
$ startx

```
## Screenshots

## Inspiration and Source
* This project is inspired to be created  from [Distro Tube](https://distrotube.com/) and [EF Tech Made Simple](https://ermannoferrari.net/)

# LICENSE 
>You can check out the full license [here](https://github.com/pkgnpdeb/window-manager-configs/blob/main/dwm/LICENSE)
