# prompt color is green
# display is [time] currdir user $
export PS1='\[\033[32m\][\t] \u \W$ \[\e[0m\]'

# command line vim mode
set -o vi

# add alias
alias ll='ls -alF'

#======================================
# prompt settings (like a Gitbash)
#======================================
# download 2 files.
# wget https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -O .git-completion.bash
# wget https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh -O .git-prompt.sh
source {%.git-prompt.sh のパス%}
source {%.git-completion.bash のパス%}
HOST='\u@\h'
PS1="\[\033]0;$HOST\007\]"     # set window title
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'\[\033[32m\]'       # change color
PS1="$PS1"'\u@\h '             # user@host<space>
PS1="$PS1"'\[\033[33m\]'       # change color
PS1="$PS1"'\w'                 # current working directory
if test -z "$WINELOADERNOEXEC"
then
    PS1="$PS1"'\[\033[36m\]'
    PS1="$PS1"'$(__git_ps1)'   # bash function
fi
PS1="$PS1"'\[\033[0m\]'        # change color
PS1="$PS1"'\n'                 # new line
PS1="$PS1"'$ '                 # prompt: always $
