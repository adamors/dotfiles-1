export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"
plugins=(git)

export NVIM_TUI_ENABLE_TRUE_COLOR=1
export RACKSPACE_USERNAME=cef-karloakes
export RACKSPACE_API_KEY=1c2f1cf162794f6e96b09b24b6a95773

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh

# Load zsh-syntax-highlighting.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

source "/Applications/SQLAnywhere12/System/bin64/sa_config.sh"

# Enable autosuggestions automatically.
# zle-line-init() {
#   zle autosuggest-start
# }
# zle -N zle-line-init

# bindkey '^f' vi-forward-word

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function ruby_version()
{
  if which rvm-prompt &> /dev/null; then
    rvm-prompt i v g
  else
    if which rbenv &> /dev/null; then
      rbenv version | sed -e "s/ (set.*$//"
    fi
  fi
}

fhist() {
  print -z $(([ -n "$ZSH_NAME" ] && fc -l 1 || history) | \
    tail -2000 | \
    fzf --tac --reverse --no-sort | \
    sed 's/ *[0-9]* *//')
}
bindkey -s '^r' 'fhist\n'

# =======
# Aliases
# =======

alias ll="ls -lgha"
alias r="rails"
alias t="tmux -2"
alias tmux="tmux -2"
alias v="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias n="NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim"
alias ctags="`brew --prefix`/bin/ctags"
alias s="cat ~/.ssh/config | grep --colour '^#'"
alias c="clear"
