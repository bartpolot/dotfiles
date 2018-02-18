[[ -f $HOME/.localrc ]] && source $HOME/.localrc

# Check for an interactive session
[ -z "$PS1" ] && return

export HISTCONTROL=ignoredups:ignorespace
export HISTSIZE=100000
shopt -s histappend

#########
#l() { IFS=+; lang=en; Q=`xclip -o`; echo $Q; Q="${Q// /%20}"; curl -s "https://dict.leo.org/${lang}de/?search=$Q" | html2text -width `tput cols` -ascii -nobs | iconv -t UTF8//IGNORE 2>/dev/null | grep -EA 900 '^\*{5} ' | grep -EB 900 '^\*{4} Weitere Aktionen' | head -n -1; }
#len() { IFS=+; lang=en; Q="${*// /%20}"; curl -s "https://dict.leo.org/${lang}de/?search=$Q" | html2text -width `tput cols` -ascii -nobs | iconv -t UTF8//IGNORE 2>/dev/null | grep -EA 900 '^\*{5} ' | grep -EB 900 '^\*{4} Weitere Aktionen' | head -n -1; }
#les() { IFS=+; lang=es; Q="${*// /%20}"; curl -s "https://dict.leo.org/${lang}de/?search=$Q" | html2text -width `tput cols` -ascii -nobs | iconv -t UTF8//IGNORE 2>/dev/null | grep -EA 900 '^\*{5} ' | grep -EB 900 '^\*{4} Weitere Aktionen' | head -n -1; }
#lpl() { IFS=+; lang=pl; Q="${*// /%20}"; curl -s "https://dict.leo.org/${lang}de/?search=$Q" | html2text -width `tput cols` -ascii -nobs | iconv -t UTF8//IGNORE 2>/dev/null | grep -EA 900 '^\*{5} ' | grep -EB 900 '^\*{4} Weitere Aktionen' | head -n -1; }
########

alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -a'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias less='less -RS'

# powerline-daemon -q
# export POWERLINE_BASH_CONTINUATION=1
# export POWERLINE_BASH_SELECT=1
# . /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh
# return


PS1_PRE="[\[$bldblu\]\u\[$txtwht\]@\[$bldgrn\]\h\[$bldred\] \w\[$txtrst\]]"
PS1_POST="\$ "
PS1="$PS1_PRE $PS1_POST"
#PS1='[\u@\h \W]\$ '

if [ -f /usr/share/git/completion/git-completion.bash ]; then
  source /usr/share/git/completion/git-completion.bash
  source /usr/share/git/completion/git-prompt.sh

  export GIT_PS1_SHOWDIRTYSTATE=true
  export GIT_PS1_SHOWUNTRACKEDFILES=true
  export GIT_PS1_SHOWCOLORHINTS=true
  export GIT_PS1_SHOWUPSTREAM="verbose"


  export PROMPT_COMMAND="__git_ps1 '$PS1_PRE' '$PS1_POST'"
fi

man() {
    env \
	LESS_TERMCAP_mb=$(printf "\e[1;34m") \
	LESS_TERMCAP_md=$(printf "\e[1;34m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;31m") \
	man "$@"
}

#complete -cf sudo
#complete -cf man

# Use bash-completion and command-not-found hints, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    source /usr/share/bash-completion/bash_completion
[[ $PS1 && -f /usr/share/doc/pkgfile/command-not-found.bash ]] && \
    source /usr/share/doc/pkgfile/command-not-found.bash

shopt -s checkwinsize

