# FOR GNOME 
# Change terminal skin
dconf load /org/gnome/terminal/ < g_terminal;

# Install icon
mkdir -p ~/.icons
git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons


sudo apt-get install -y gnome-tweaks ctags gimp clang-format ccls;


#####################################################################################################
#####################################################################################################
#####################################################################################################

cp ./.my-commands.sh ~/.my-commands.sh
cp ./.clang-format ~/.clang-format


# Install fonts
mkdir ~/.fonts;
cp ../Fonts/MacFontsCollection/* ~/.fonts 

# Ctrl-S Ctrl-Q not stop nvim
echo "stty -ixon" >> ~/.bashrc;

# Install sofwares
sudo apt-get install -y  curl  git  kolourpaint neovim neovim-qt plank vlc;

# Install nvim's plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mygenacc99/nvim-settings ~/

# Install command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install --all;


# Install zsh
sudo apt-get install -y zsh;
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh);

# Install ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

