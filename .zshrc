export ZSH=$HOME/.oh-my-zsh
# export PATH="/usr/local/sbin:$PATH"
export DYLD_BIND_AT_LAUNCH=1

ZSH_THEME="avit"

plugins=(rails git ruby brew bundler gem colored-man-pages)

export NVIM_TUI_ENABLE_TRUE_COLOR=1

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/sbin:~/bin:$PATH"
source $ZSH/oh-my-zsh.sh

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
alias n="nvim"
alias ctags="`brew --prefix`/bin/ctags"
alias s="cat ~/.ssh/config | grep --colour '^#'"
alias be="bundle exec"
alias es="elasticsearch"
alias c="clear"
alias vimr="vimr --cwd ."

export NVM_DIR="/Users/gavsim/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export VISUAL=nvim
export EDITOR="$VISUAL"

export FZF_DEFAULT_COMMAND='ag -g ""'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
