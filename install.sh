#!/usr/bin/env bash
rm -rf ~/vimrc




curl -fLo ~/.vimrc --create-dirs \
  https://raw.githubusercontent.com/Ch4kr4k/vimaslvim/main/.vimrc
  
curl -fLo ~/.vim/colors/NeoSolarized.vim --create-dirs \
  https://raw.githubusercontent.com/Ch4kr4k/vimaslvim/main/NeoSolarized.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/rc/dein.toml --create-dirs \
  https://raw.githubusercontent.com/Ch4kr4k/vimaslvim/main/dein.toml

touch ~/.vim/rc/dein_lazy.toml

curl https://raw.githubusercontent.com/Ch4kr4k/vimaslvim/main/installer.sh > installer.sh
chmod +x ./installer.sh
sh ./installer.sh
rm -rf ~/.vim

vim
