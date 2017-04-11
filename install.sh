echo 'Updating modules...'
git submodule update --init --recursive

echo 'Installing fonts...'
submodules/fonts/install.sh

echo 'Installing Xcode command line tools...'
xcode-select --install

echo 'Setting zsh as default shell...'
chsh -s /bin/zsh

echo 'Creating symlinks...'

export MODULES=$PWD/modules

ln -shf $MODULES/mjolnir-config $HOME/.mjolnir
ln -shf $MODULES/oh-my-zsh $HOME/.oh-my-zsh
ln -shf $PWD/.tmux.conf $HOME/.tmux.conf
ln -shf $PWD/.zshrc $HOME/.zshrc 

echo 'Done!'

