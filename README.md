# Destock
## Install

```
sudo pacman -Syu i3-gaps rofi i3status kitty zsh feh nvim keepass git flatpak
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

flatpak install flathub com.brave.Browser spotify com.valvesoftware.Steam

```
## Fonts

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
```


