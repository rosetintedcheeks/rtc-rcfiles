rm ~/.zshrc
ln zshrc ~/.zshrc
rm ~/.zshrc.alias
ln zshrc.alias ~/.zshrc.alias
rm ~/.config/kitty/kitty.conf
ln kitty.conf ~/.config/kitty/kitty.conf
rm ~/.config/i3/config
ln i3config ~/.config/i3/config
rm ~/.config/i3blocks/scripts
cp -rl scripts ~/.config/i3blocks/scripts
rm ~/.gitprompt.sh
ln git-prompt.sh ~/.gitprompt.sh
rm ~/.config/nvim/init.vim
ln init.vim ~/.config/nvim/init.vim
