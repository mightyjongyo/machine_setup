echo "Adding bashrc to local .bashrc" 
echo "if [ -f `pwd`/bashrc ]; then" >> $HOME/.bashrc
echo "  . `pwd`/bashrc" >> $HOME/.bashrc
echo "fi" >> $HOME/.bashrc
