# Destock
## Install

```
sudo pacman -Syu rofi kitty zsh feh neovim keepass flatpak bluez bluez-utils blueman spotify-launcher
sudo pacman -S --needed base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
$ yay -S brave

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

modprobe btusb
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service



flatpak install flathub com.valvesoftware.Steam com.visualstudio.code

```
## Fonts
```
  mkdir -p ~/.local/share/fonts
  cp ./fonts/* ~/.local/share/fonts/
  fc-cache -fv
```

## I3
```
  cp ./i3 ~/.config/
```

## rofi
```
  cp ./rofi ~/.config/
```

## nvim
```
  cp ./nvim ~/.config/
  curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
:PlugInstall


