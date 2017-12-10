#! /bin/sh
echo "Startup executing..."
echo "Creating symlinks..."
echo "Creating symlink for vimrc..."
cd ~
if [[ -a ~/.vimrc ]]; then
  echo 'vim symlink is already created!'
else
  ln -s ~/code/dotfiles/vim/.vimrc ~/.vimrc
  echo "vimrc symlink created."
fi

echo "Creating symlink for zshrc..."
cd ~
if [[ -a ~/.zshrc ]]; then
  echo 'zsh symlink is already created!'
else
  ln -s ~/code/dotfiles/zsh/.zshrc ~/.zshrc
  echo "zshrc symlink created."
fi


echo "adding directory for vim backups"
if [[ -d ~/.vim/backup ]]; then
  echo 'backup vim directory already exists'
else
  echo 'making vim backup directory'
  mkdir ~/.vim/backup//
fi

echo "adding directory for vim swaps"
if [[ -d ~/.vim/swap ]]; then
  echo 'swap vim directory already exists'
else
  echo 'making vim swap directory'
  mkdir ~/.vim/swap//
fi

echo "adding directory for vim undos"
if [[ -d ~/.vim/undo ]]; then
  echo 'undo vim directory already exists'
else
  echo 'making vim undo directory'
  mkdir ~/.vim/undo//
fi

echo "adding the minpac package manager for vim"
if [[ -d ~/.vim/pack/minpac/opt/minpac/doc ]]; then
  echo 'minpac manager already exists'
else
  echo 'adding minpac manager'
  git clone https://github.com/k-takata/minpac.git \
      ~/.vim/pack/minpac/opt/minpac
fi

echo "Setting zsh as shell"
chsh -s $(which zsh)
echo "instalingl oh-my-zsh"
if [[ -d ~/.oh-my-zsh ]]; then
  echo 'oh-my-zsh already installed'
else
  echo 'installing oh-my-zsh...'
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

echo "download additional fonts for agnoster theme"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
