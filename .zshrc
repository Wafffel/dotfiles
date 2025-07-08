# ~/.zshrc

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
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

export FZF_DEFAULT_OPTS=" --color=bg+:#1e1e2e,bg:#181825,spinner:#f5c2e7,hl:#f38ba8 --color=fg:#cdd6f4,header:#89b4fa,info:#cba6f7,pointer:#f5c2e7 --color=marker:#b4befe,fg+:#cdd6f4,prompt:#fab387,hl+:#f38ba8"
