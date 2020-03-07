cd ~/.oh-my-zsh/custom/plugins;

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
echo "source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc;

git clone https://github.com/zsh-users/zsh-autosuggestions zsh-autosuggestions;
echo "source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc;

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git powerlevel10k
echo 'source ~/.oh-my-zsh/custom/plugins/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc;
echo 'source ~/.my-commands.sh' >> ~/.zshrc;
echo 'bindkey '^H' backward-kill-word' >> ~/.zshrc;


echo "plugins=(
	git
	colored-man-pages
	zsh-syntax-highlighting
	zsh-autosuggestions
	command-not-found
	encode64
	extract
)" >> ~/.zshrc;

~/.fzf/install --all;
