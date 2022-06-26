# Making Vim act like Lvim and Vscode Ide
for those who want lvim but vim to much that they can't shift to nvim/lvim
### Installing Pre-Dependencies

- install Vundle 

		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

- install Plug

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

- install dein

		curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
		sh ./installer.sh ~/.cache/dein
		mkdir -p ~/.vim/rc
		touch ~/.vim/rc/dein_lazy.toml
		touch ~/.vim/rc/dein.toml

for examples of .toml check dein.vim github page

- install nvm,nodejs,npm,yarn,prettier,stylua 

		google and check how to do it 

- install other

`for debian based for other distro check their package manager`
		
		sudo apt install bat fzf ripgrep universal-ctag fd-find shellcheck codespell flake8

- installation of config

		rm -rf ~/.vimrc
		curl -fLo ~/.vimrc --create-dirs \
   			https://raw.githubusercontent.com/BL4CK-R34P3R/vimaslvim/main/.vimrc
