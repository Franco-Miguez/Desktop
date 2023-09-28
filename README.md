# Destock
## Install

```
sudo pacman -Syu rofi kitty zsh zsh-autosuggestions zsh-syntax-highlighting feh neovim keepass flatpak bluez bluez-utils blueman spotify-launcher picom bat lsd pavucontrol flameshot p7zip
```
## Hacking
curl -O https://blackarch.org/strap.sh
sudo ./strap.sh
sudo pacman -Syu sshpass net-tools

## add Theam 
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

usermod --shell /user/bin/zsh root

## Init Bluetooth
modprobe btusb
sudo systemctl enable bluetooth.service
sudo systemctl start bluetooth.service



flatpak install flathub com.valvesoftware.Steam com.brave.Browser

```
## Fonts
```
  mkdir -p ~/.local/share/fonts
  cp ./fonts/* ~/.local/share/fonts/
  fc-cache -fv
```

## Polybar
```
    cp -r polybar/* ~./config/polybar/
    sudo mkdir -p /usr/share/fonts/truetype
    sudo cp polybar/fonts/* /usr/share/fonts/truetype    
    fc-cache -v
    echo '~/.config/polybar/./launch.sh' >> ~/.config/bspwm/bspwmrc
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

## move fiel
```
    cp {./rofi,./sxhkd,./kitty} ~/.config/
    cp {./.p10k.zsh,./.zshrc} ~/
```

:PlugInstall

