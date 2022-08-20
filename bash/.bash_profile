unset TMUX
[ "$VIMRUNTIME" ] && [ "$VIRTUAL_ENV" ] && source "$VIRTUAL_ENV/bin/activate"

# SETTINGS
source ~/.bash_prompt

# GIT
alias ga="git add"
alias gc="git commit -m "
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias gp="git push"
alias gm="git checkout master"
alias gl="git log --oneline --decorate"

# ENV
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
