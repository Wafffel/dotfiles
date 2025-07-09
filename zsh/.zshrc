# ~/.zshrc

HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
bindkey -v

unsetopt BEEP

if [[ ! -f ~/.zinit/bin/zinit.zsh ]]; then
  mkdir -p ~/.zinit && git clone https://github.com/zdharma-continuum/zinit.git ~/.zinit/bin
fi
source ~/.zinit/bin/zinit.zsh

zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light jeffreytse/zsh-vi-mode

autoload -Uz compinit && compinit

eval "$(zoxide init zsh)"

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

if [[ -f "$HOME/.config/zsh/.zsh_aliases" ]]; then
  source "$HOME/.config/zsh/.zsh_aliases"
fi

if [[ -t 1 && -z "$TMUX" ]]; then
  SESSION_NAME="main"
  exec tmux new-session -A -s "$SESSION_NAME"
fi

export FZF_DEFAULT_OPTS=" --color=bg+:#1e1e2e,bg:#181825,spinner:#f5c2e7,hl:#f38ba8 --color=fg:#cdd6f4,header:#89b4fa,info:#cba6f7,pointer:#f5c2e7 --color=marker:#b4befe,fg+:#cdd6f4,prompt:#fab387,hl+:#f38ba8"
