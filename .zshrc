# History search with up/down arrows
# When text is entered, up/down navigates through commands matching that prefix
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

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
