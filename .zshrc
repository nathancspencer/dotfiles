# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export HOMEBREW_NO_AUTO_UPDATE=1

# Show git branch (or commit hash if detached) in prompt
setopt PROMPT_SUBST
git_info() { git branch --show-current 2>/dev/null | grep . || git rev-parse --short HEAD 2>/dev/null; }
# PROMPT='%1~ $(git_info) %# '
PROMPT='%B%1~%b %B%F{166}$(git_info)%f%b %# '

# Aliases
alias -- 'gb'='git branch'
alias -- 'gcam'='git commit -a -m'
alias -- 'gco'='git checkout'
alias -- 'gd'='git pull origin'
alias -- 'gs'='git status'
alias -- 'gu'='git push -u origin HEAD'
alias -- 'ls'='ls -1 --color'
