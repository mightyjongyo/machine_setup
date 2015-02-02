echo "Adding vimrc to local .vimrc"
echo "source `pwd`/vimrc" >> $HOME/.vimrc
mkdir -p /home/$USER/.vim/
ln -s `pwd`/bundle /home/$USER/.vim/
ln -s `pwd`/autoload /home/$USER/.vim/ 

cd `pwd`/bundle
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/scrooloose/syntastic.git
git clone https://github.com/ajh17/Spacegray.vim.git
git clone https://github.com/bling/vim-airline
git clone https://github.com/mileszs/ack.vim.git
git clone https://github.com/mrtazz/DoxygenToolkit.vim
git clone https://github.com/tpope/vim-surround.git
git clone https://github.com/godlygeek/tabular.git
