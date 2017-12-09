#! /bin/sh
echo "Startup executing..."
echo "Creating symlinks..."
echo "Creating symlink for vimrc..."
cd ~
ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
echo "vimrc symlink created."
echo "Creating symlink for zshrc..."
ln -s ~/code/dotfiles/zsh/.zshrc ~/.zshrc

echo "adding directories for vim backups"
mkdir ~/.vim/backup//
mkdir ~/.vim/swap//
mkdir ~/.vim/undo//

echo "adding the minpac package manager for vim"
git clone https://github.com/k-takata/minpac.git \
    ~/.vim/pack/minpac/opt/minpac

echo "Setting zsh as shell"
chsh -s $(which zsh)
echo "install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "download additional fonts for agnoster theme"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
