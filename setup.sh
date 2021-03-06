#!/bin/zsh

DOT_FILES=(.zshrc .zsh_profile .gitconfig .tmux.conf)

for file in ${DOT_FILES[@]}
do
  ln -s $HOME/.dotfiles/$file $HOME/$file
done
 
 # set up oh-my-zsh
~/.dotfiles/oh-my-zsh/tools/install.sh | sh

# create hard-link to oh-my-zsh-powerline-theme from oh-my-zsh/themes
ln -f ~/.dotfiles/oh-my-zsh-powerline-theme/powerline.zsh-theme ~/.dotfiles/oh-my-zsh/themes/powerline.zsh-theme

# cloneする
git clone https://github.com/powerline/fonts.git --depth=1

# インストール
cd fonts
./install.sh

# 必要なければcloneファイルを削除
cd ..
rm -rf fonts
