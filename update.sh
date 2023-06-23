rm ~/.zshrc
ln zshrc ~/.zshrc
rm ~/.zshrc.alias
ln zshrc.alias ~/.zshrc.alias
rm ~/.zshrc.functions
ln zshrc.functions ~/.zshrc.functions
rm ~/.config/kitty/kitty.conf
ln kitty.conf ~/.config/kitty/kitty.conf
rm ~/.config/i3/config
ln i3config ~/.config/i3/config
cp -rl i3blockscripts/. ~/.config/i3blocks/scripts
rm ~/.gitprompt.sh
ln git-prompt.sh ~/.gitprompt.sh
rm ~/.config/nvim/init.vim
ln init.vim ~/.config/nvim/init.vim
