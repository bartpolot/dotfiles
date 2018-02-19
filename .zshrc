# Source Prezto.
[[ -f $HOME/.zshrc.prezto ]] && \
    source $HOME/.zshrc.prezto && \
    alias rm='nocorrect rm'


# Customize to your needs...
[[ -f $HOME/.localrc ]] && source $HOME/.localrc

# Activate powerline (slow!)
# . /usr/share/zsh/site-contrib/powerline.zsh

# Use powerline-like, verbose git-enabled prompt
. ~/.zshrc.prompt

unsetopt share_history

[[ $PS1 && -f /usr/share/doc/pkgfile/command-not-found.zsh ]] && \
    source /usr/share/doc/pkgfile/command-not-found.zsh
