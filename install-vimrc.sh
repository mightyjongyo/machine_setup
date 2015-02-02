echo "Adding vimrc to local .vimrc"
echo "source `pwd`/vimrc" >> $HOME/.vimrc
mkdir -p /home/$USER/.vim/
ln -s `pwd`/bundle /home/$USER/.vim/
ln -s `pwd`/autoload /home/$USER/.vim/ 

