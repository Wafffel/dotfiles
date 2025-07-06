# ~/.config/fish/config.fish

# Disable greeting message
set fish_greeting

starship init fish | source

function prompt_newline --on-event fish_postexec
    set current_cmd (echo $argv[1] | string trim)
    if test "$current_cmd" != "clear"
        echo
    end
end

if status is-interactive
    and not set -q TMUX
    set session_name "main"
    exec tmux new -A -s $session_name
end

fzf --fish | source
alias fzfp="fzf --preview \"bat --color=always --style=numbers --line-range=:500 {}\""

if status is-interactive
    printf "\033[6 q"
end
