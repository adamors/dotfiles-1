export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gnzh"
plugins=(git)

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh

# Load zsh-syntax-highlighting.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# Load zsh-autosuggestions.
source ~/.zsh/zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically.
zle-line-init() {
  zle autosuggest-start
}
zle -N zle-line-init

bindkey '^f' vi-forward-word

# ============
# Base16 Shell
# ============

# BASE16_SHELL="$HOME/.config/base16-shell/base16-ocean.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

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
alias v="vim ."
alias n="nvim ."
alias ctags="`brew --prefix`/bin/ctags"
alias s="cat ~/.ssh/config | grep --colour '^#'"
alias c="clear"
alias b="bundle exec"
