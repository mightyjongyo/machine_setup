echo "Installing sublime text 3"
sudo tar -xf sublime_text_3_build_3083_x64.tar.bz2 -C /opt/
sudo ln -sf /opt/sublime_text_3/sublime_text /usr/bin/sublime
sudo ln -sf `pwd`/sublime.desktop /usr/share/applications/sublime.desktop
ln -sf `pwd`/sublime-text-3 ~/.config/sublime-text-3

