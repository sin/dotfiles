echo 'Updating modules...'
git submodule update --init --recursive

echo 'Installing fonts...'
fonts/install.sh

echo 'Installing Xcode command line tools...'
xcode-select --install

echo 'Setting zsh as default shell...'
chsh -s /bin/zsh

echo 'Creating symlinks...'
ln -shf $PWD/mjolnir-config $HOME/.mjolnir
ln -shf $PWD/oh-my-zsh $HOME/.oh-my-zsh
ln -shf $PWD/.tmux.conf $HOME/.tmux.conf
ln -shf $PWD/.zshrc $HOME/.zshrc

echo 'Done!'