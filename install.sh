#!/usr/bin/env bash
rm -rf ~/vimrc
rm -rf ~/.vim



curl -fLo ~/.vimrc --create-dirs \
  https://raw.githubusercontent.com/BL4CK-R34P3R/vimaslvim/main/.vimrc
  
curl -fLo ~/.vim/colors/NeoSolarized.vim --create-dirs \
  https://raw.githubusercontent.com/BL4CK-R34P3R/vimaslvim/main/NeoSolarized.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

curl -fLo ~/.vim/rc/dein.toml --create-dirs \
  https://raw.githubusercontent.com/BL4CK-R34P3R/vimaslvim/main/dein.toml

touch ~/.vim/rc/dein_lazy.toml

curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

  sh ./installer.sh ~/.vim/dein

  vim
