# ~/.zshrc

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

unsetopt BEEP

eval "$(starship init zsh)"

FIRST_PROMPT=1
LAST_CMD=""

function preexec() {
  LAST_CMD=$1
}

function precmd() {
  if [[ $FIRST_PROMPT -eq 1 ]]; then
    FIRST_PROMPT=0
    return
  fi

  if [[ "$LAST_CMD" != "clear" ]]; then
    echo
  fi
}

source <(fzf --zsh)

alias fzf='fzf --preview "bat --color=always --style=numbers --theme=\"Catppuccin Mocha\" --line-range=:500 {}"'
alias bat='bat --color=always --style=numbers --theme="Catppuccin Mocha"'

echo -ne "\e[6 q"
