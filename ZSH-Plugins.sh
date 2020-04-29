echo "plugins=(
	git
	colored-man-pages
	zsh-syntax-highlighting
	zsh-autosuggestions
	command-not-found
	encode64
	extract
)" >> ~/.zshrc;


cd ~/.oh-my-zsh/custom/plugins;

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc;

git clone https://github.com/zsh-users/zsh-autosuggestions zsh-autosuggestions;
echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc;

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git powerlevel10k
echo 'source ~/.oh-my-zsh/custom/plugins/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc;
echo 'source ~/.my-commands.sh' >> ~/.zshrc;
echo 'bindkey '^H' backward-kill-word' >> ~/.zshrc;


~/.fzf/install --all;

sed 's/plugins=(git)//' ~/.zshrc >  ~/.zshrctemp
mv ~/.zshrctemp ~/.zshrc

if [[ $DESKTOP_SESSION = "plasma" ]]
then
    echo "
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT4_IM_MODULE=ibus
export CLUTTER_IM_MODULE=ibus
    " >> ~/.zshrc;
    echo "added MODULE=ibus to zshrc"
    echo "FOR PLASMA"
else
    echo "FOR GNOME" 
fi
