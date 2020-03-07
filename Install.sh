cp ./.my-commands.sh ~/.my-commands.sh
cp ./.clang-format ~/.clang-format
#change terminal skin
dconf load /org/gnome/terminal/ < g_terminal;

# Install fonts
mkdir ~/.fonts;
cp ../Fonts/MacFontsCollection/* ~/.fonts
# Neovim Setting
# Set Ctrl-S Ctrl-Q not stop nvim
echo "stty -ixon" >> ~/.bashrc;

# Install apt
sudo apt-get install -Y ccls clang-format ctags curl gimp git gnome-tweaks kolourpaint neovim neovim-qt plank vlc;

sudo apt-get install -Y zsh;
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh);

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install --all;
