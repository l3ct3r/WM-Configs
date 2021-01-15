# i3 Window Manager (i3wm)
* i3 Configuration      

## Required Tools: 
* git 
* Terminal  
* Text Editor (VIM/Emacs/Nano)
* Web Browser (For online manual) 

## Links: 
* [VIM](https://www.vim.org/)
* [qutebrowser](https://qutebrowser.org/)
* [Font Awesome](https://fontawesome.com)
* [Arch User Repository](https://aur.archlinux.org/packages/yay/)
* [Polybar Wiki](https://github.com/polybar/polybar/wiki)

## Table of contents
* [General info](#general-info)
* [Documentation](#docs)
* [Setup](#setup)

## General info
This is configuration of i3 Window Manager.

## Documentation
* [i3 on Arch](https://wiki.archlinux.org/index.php/I3#Installation)
* [i3-gaps on Arch](https://github.com/Airblader/i3)

## Setup 
Setting up DWM(Arch based distributions):
```
1. Install i3
Type the following command in the terminal:

$ sudo pacman -S i3
When it asks which packages to install, showing the possible options, only hit enter and it will install all the necessary ones.

2. Edit Xinitrc
Type the following command in the terminal:

$ echo "exec i3" >> ~/.xinitrc
If you have another window manager or desktop environment installed, you may be able to choose i3 as a window manager via the desktop manager.

If you don't have a desktop manager to choose i3, or you want it as your unique window manager, remove or comment the lines of the other window managers/desktop environments installed in your system. They are placed in Xinitrc too.

3. Install Xorg
$ sudo pacman -S xorg-server xorg-xinit
4. Start i3
$ startx

4. Installing and using i3-gaps is similar to i3 
$ sudo pacman -S i3-gaps 
$ echo "exec i3-gaps" >> ~/.xinitrc

5. Get your [font-awesome](https://archlinux.org/packages/community/any/ttf-font-awesome/)

6. Manually Install a Font in Arch Linux
Installing a font manually is something that I always used to forget how to do since most of the fonts that I installed I got through either yaourt or some other package manager.

Unpack the file and move it to the shared fonts folder:
$ mv font.ttf /usr/share/fonts/

Or if you want to install the font for a single user, move it to the .fonts directory in the home folder.
$ mv font.ttf ~/.fonts/

You might also have to update /etc/X11/xorg.conf or /etc/xorg.conf with the new directory. Search for FontPath to find the correct location within the file to add your new path.
Now, reload the font cache:
$ fc-cache -vf

7. Installing Xorg fonts 
$ sudo pacman -S xorg-fonts-misc

8. Other fonts 
$ yay -S siji-git ttf-unifont

```

## Screenshot 
* i3-bar
* i3-blocks
![2021-01-15-081313_1920x1080_scrot](https://user-images.githubusercontent.com/48232101/104700031-ae117a00-573b-11eb-9bf6-b8a75ccd9e2f.png)

* i3-status
* polybar

![2021-01-15-115208_1920x1080_scrot](https://user-images.githubusercontent.com/48232101/104725443-33a42280-575a-11eb-9cea-9e089f0d80d1.png)


## Inspiration and Source
* This project is inspired to be created  from [EF Tech Made Simple](https://ermannoferrari.net/)

# LICENSE 
>You can check out the full license [here](https://github.com/pkgnpdeb/window-manager-configs/blob/main/i3-wm/LICENSE)
