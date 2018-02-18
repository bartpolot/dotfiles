# Source Prezto.
source $HOME/.zshrc.prezto

alias rm='nocorrect rm'
unalias top

# Customize to your needs...
source $HOME/.localrc

# Activate powerline (slow!)
# . /usr/share/zsh/site-contrib/powerline.zsh

# Use powerline-like, verbose git-enabled prompt
. ~/.zshrc.prompt

unsetopt share_history
