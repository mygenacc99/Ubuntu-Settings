cp ./.my-commands.sh ~/.my-commands.sh
cp ./.tmux.conf ~/.tmux.conf 
cp ./.clang-format ~/.clang-format
cp ./wallpaper.jpg ~/Pictures/wallpaper.jpg

# Install fonts
mkdir ~/.fonts;
cp ../Fonts/FontsCollection/* ~/.fonts 

# Ctrl-S Ctrl-Q not stop nvim
echo "stty -ixon" >> ~/.bashrc;

sudo apt update
sudo apt install -y wget curl git net-tools software-properties-common apt-transport-https;
cd ~/Downloads
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb



if [[ $DESKTOP_SESSION == "plasma" ]]
then
    echo "FOR PLASMA"
    # Themes manager for qt5
    sudo apt install -y qt5-style-kvantum;   
    
    # Solve calculus on Krunner
    sudo apt install -y gnuplot;
    
    # Screenshot for KDE
    sudo apt purge -y kde-spectacle;
    sudo apt install -y flameshot;
    
    sudo apt install -y latte-dock;
    # For ibus
    sudo apt install -y im-config language-selector-gnome ibus ibus-gtk ibus-gtk3 ibus-table;
else
    echo "FOR GNOME" 
    # Change terminal skin
    dconf load /org/gnome/terminal/ < .g_terminal;

    # Install icon
    mkdir -p ~/.icons
    git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons


    sudo apt install -y plank gnome-tweaks ctags gimp clang-format ccls;
fi

#####################################################################################################
#####################################################################################################
#####################################################################################################


sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo add-apt-repository ppa:neovim-ppa/unstable

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt update
# Install sofwares
sudo apt install -y nodejs neovim code ibus-bamboo kolourpaint simplescreenrecorder neovim-qt vlc goldendict;

# Fix mysql can't store password
sudo apt install -y  gnome-keyring;

ibus restart

# Install nvim's plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mygenacc99/nvim-settings ~/.config/nvim

# Install command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install --all;


# Install zsh
sudo apt install -y zsh;
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh);

# Install ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

