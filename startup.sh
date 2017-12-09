#! /bin/sh
echo "Startup executing..."
echo "Creating symlinks..."
echo "Creating symlink for vimrc..."
cd ~
ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
echo "vimrc symlink created."

echo "adding directories for vim backups"
mkdir ~/.vim/backup//
mkdir ~/.vim/swap//
mkdir ~/.vim/undo//

echo "adding the minpac package manager for vim"
git clone https://github.com/k-takata/minpac.git \
    ~/.vim/pack/minpac/opt/minpac
