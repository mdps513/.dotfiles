#!/bin/zsh

  DOT_FILES=(.zshrc .zsh_profile .gitconfig)

 for file in ${DOT_FILES[@]}
 do
     ln -s $HOME/.dotfiles/$file $HOME/$file
 done
 
 # set up oh-my-zsh
#~/.dotfiles/oh-my-zsh/tools/install.sh | ZSH=~/dotfiles/oh-my-zsh sh

# create hard-link to oh-my-zsh-powerline-theme from oh-my-zsh/themes
#ln -f ~/dotfiles/oh-my-zsh-powerline-theme/powerline.zsh-theme ~/dotfiles/oh-my-zsh/themes/powerline.zsh-theme