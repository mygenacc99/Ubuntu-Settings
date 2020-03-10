cp ./.my-commands.sh ~/.my-commands.sh
cp ./.clang-format ~/.clang-format
# Change terminal skin
dconf load /org/gnome/terminal/ < g_terminal;

# Install fonts
mkdir ~/.fonts;
cp ../Fonts/MacFontsCollection/* ~/.fonts 

# Ctrl-S Ctrl-Q not stop nvim
echo "stty -ixon" >> ~/.bashrc;


curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# Install command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install --all;

# Install sofwares
sudo apt-get install -y ctags curl gimp clang-format git gnome-tweaks kolourpaint neovim neovim-qt plank vlc;

sudo apt-get install -y zsh;
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh);

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

