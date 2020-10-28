cp ./.my-commands.sh ~/.my-commands.sh
cp ./.tmux.conf ~/.tmux.conf 
cp ./.clang-format ~/.clang-format
cp ./wallpaper.jpg ~/Pictures/wallpaper.jpg

# Installs fonts
mkdir ~/.fonts;
cp ../Fonts/FontsCollection/* ~/.fonts 

# Ctrl-S, Ctrl-Q don't stop nvim
echo "stty -ixon" >> ~/.bashrc;


sudo apt update
sudo apt install -y wget curl git net-tools software-properties-common apt-transport-https;

# Installs google chrome
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb


if [[ $DESKTOP_SESSION == "plasma" ]]
then
    echo "FOR PLASMA"
    # Themes manager for qt5
    sudo apt install -y qt5-style-kvantum;   
    
    # Solves calculus on Krunner
    sudo apt install -y gnuplot;
    
    # Screenshot for KDE
    sudo apt purge -y kde-spectacle;
    sudo apt install -y flameshot;
    
    sudo apt install -y latte-dock;
    # For ibus
    sudo apt install -y im-config language-selector-gnome ibus ibus-gtk ibus-gtk3 ibus-table;
else
    echo "FOR GNOME" 
    # Changes terminal skin
    dconf load /org/gnome/terminal/ < .g_terminal;

    # Installs icons
    mkdir -p ~/.icons
    git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons


    sudo apt install -y plank gnome-tweaks ctags gimp clang-format ccls;
fi

#####################################################################################################
#####################################################################################################
#####################################################################################################

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt update
# Installs sofwares
sudo apt install -y nodejs neovim code ibus-bamboo kolourpaint simplescreenrecorder neovim-qt vlc goldendict tmux;

# Fix mysql couldn't  store password
sudo apt install -y  gnome-keyring;

ibus restart

# Install nvim's plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mygenacc99/nvim-settings ~/.config/nvim

# Installs command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install --all;


# Installs zsh
sudo apt install -y zsh;
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh);

# Installs ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

