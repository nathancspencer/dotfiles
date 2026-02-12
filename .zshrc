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
alias -- 'gl'='git log'
alias -- 'gu'='git push -u origin HEAD'
alias -- 'ls'='ls -1 --color'
alias -- 'v'='vim $(fzf)'
alias -- 'c'='claude'

export CLAUDE_CODE_USE_BEDROCK=1
export ANTHROPIC_MODEL='us.anthropic.claude-opus-4-6-v1'
# export AWS_REGION=ap-southeast-2

(brew upgrade --cask claude-code &>/dev/null &)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
