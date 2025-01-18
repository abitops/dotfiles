#!/bin/bash

# Arch setup
# by Bish0p

# 1. update system
# 2. install required packages
# 3. copy dotfiles into correct destination
# 4. run additional commands
# 5. reboot to final version

# (1)
echo -e "==> Upgrading system"
sudo pacman -Syu --noconfirm

# (2)
echo -e "==> Installing all packages required for configuration"
sudo pacman -S vim neovim alacritty zsh hyprland hyprpaper hyprlock waybar git curl ttf-firacode-nerd qutebrowser rofi pcmanfm ttf-liberation ttf-liberation-mono-nerd bat --noconfirm
echo -e "==> Installing Oh-My-Zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo -e "==> Installing PowerLevel10k"
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

echo -e "==> Setting up yay"
echo -e "=> Creating symlink"
sudo ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
echo -e "=> Cloning git repo"
git clone https://aur.archlinux.org/yay.git
cd yay && makepkg -si

echo -e "==> Installing uwsm via yay"
yay -S uwsm --noconfirm

# (3)
dot_git_dir=$HOME/repos/privs/dotfiles
echo -e "==> Preparing repo directory structure"
mkdir -p $dot_git_dir
git clone https://github.com/Bisi3k/dotfiles.git $dot_git_dir

echo -e "==> Copying dotfiles to respective destinations"
echo -e "=> .zshrc"
cp -v $dot_git_dir/zsh/.zshrc $HOME
echo -e "=> .p10k"
cp -v $dot_git_dir/zsh/.p10k.zsh $HOME
echo -e "=> .vimrc"
cp -v $dot_git_dir/apps_conf/.vimrc $HOME
echo -e "=> alacritty"
cp -v -R $dot_git_dir/apps_conf/.config/alacritty $HOME/.config
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
echo -e "=> hyprland+"
cp -v -R $dot_git_dir/apps_conf/.config/hypr $HOME/.config
echo -e "=> neovim"
cp -v -R $dot_git_dir/apps_conf/.config/nvim $HOME/.config
echo -e "=> qutebrowser"
cp -v -R $dot_git_dir/apps_conf/.config/qutebrowser $HOME/.config
echo -e "=> rofi"
cp -v -R $dot_git_dir/apps_conf/.config/rofi $HOME/.config
echo -e "=> waybar"
cp -v -R $dot_git_dir/apps_conf/.config/waybar $HOME/.config

echo -e "==> Creating .ssh directory"
mkdir $HOME/.ssh

# (4)
echo -e "==> Starting hyprpaper and waybar services"
systemctl --user --enable --now hyprpaper waybar


# (5)
sudo reboot
