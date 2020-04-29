if [[ $DESKTOP_SESSION = "plasma" ]]
then
    echo "FOR PLASMA"
    
    # Screenshot for KDE
    sudo apt-get purge -y kde-spectacle;
    sudo apt-get install -y flameshot;
    
    sudo apt-get install -y latte-dock;
    # For ibus
    sudo apt-get install -y im-config language-selector-gnome ibus ibus-gtk ibus-gtk3 ibus-table;
else
    echo "FOR GNOME" 
    # Change terminal skin
    dconf load /org/gnome/terminal/ < .g_terminal;

    # Install icon
    mkdir -p ~/.icons
    git clone https://github.com/keeferrourke/la-capitaine-icon-theme.git ~/.icons


    sudo apt-get install -y plank gnome-tweaks ctags gimp clang-format ccls;
fi

#####################################################################################################
#####################################################################################################
#####################################################################################################

cp ./.my-commands.sh ~/.my-commands.sh
cp ./.clang-format ~/.clang-format
cp ./wallpaper.jpg ~/Pictures/wallpaper.jpg

# Install fonts
mkdir ~/.fonts;
cp ../Fonts/MacFontsCollection/* ~/.fonts 

# Ctrl-S Ctrl-Q not stop nvim
echo "stty -ixon" >> ~/.bashrc;

sudo add-apt-repository ppa:bamboo-engine/ibus-bamboo
sudo add-apt-repository ppa:neovim-ppa/unstable

sudo apt-get update
# Install sofwares
sudo apt-get install -y ibus-bamboo curl git kolourpaint simplescreenrecorder neovim neovim-qt vlc goldendict;

ibus restart

# Install nvim's plugins
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/mygenacc99/nvim-settings ~/.config/nvim

# Install command-line fuzzy finder
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf;
~/.fzf/install --all;


# Install zsh
sudo apt-get install -y zsh;
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh);

# Install ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

