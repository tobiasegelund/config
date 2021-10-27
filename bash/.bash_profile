unset TMUX
export FZF_DEFAULT_OPTS="--extended"
export FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --info inline --preview 'cat {}'"
[ "$VIMRUNTIME" ] && [ "$VIRTUAL_ENV" ] && source "$VIRTUAL_ENV/bin/activate"

# SETTINGS
source ~/.bash_prompt
source ~/.fzf.bash

# GIT
alias g="git"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gc="git checkout"
alias gp="git push"
alias gm="git checkout master"
alias gl="git log --graph --all"

# AG
alias ag='ag --nogroup'

# ENV
alias ml='deactivate &> /dev/null; source ~/ML/venv/bin/activate'
alias ae='deactivate &> /dev/null; source ./env/bin/activate'
alias de='deactivate'

# BASH
alias la='ls -l'
alias lah='ls -lah'
alias path='echo -e ${PATH//:/\\n}'
alias bashprofile="vi ~/.bash_profile && . ~/.bash_profile"

# NAVIGATE
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# SSH
alias pie='ssh pi@tobiasegelund.local'

# TMUX
alias tls='tmux ls'
alias tkill='tmux kill-session -t'
alias tnew='tmux new -s'
alias tat='tmux attach -t'
alias tde='tmux detach'
alias tsw='tmux switch -t'

# C++
alias g++='g++ -std=c++11'
