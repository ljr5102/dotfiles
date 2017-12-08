#! /bin/sh
echo "Startup executing..."
echo "Creating symlinks..."
echo "Creating symlink for vimrc..."
cd ~
ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
echo "vimrc symlink created."
