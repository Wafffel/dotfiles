# ~/.config/fish/config.fish

# Disable greeting message
set fish_greeting

starship init fish | source

function prompt_newline --on-event fish_postexec
    if test "$__fish_last_command" != "clear"
        echo
    end
end

if status is-interactive
    and not set -q TMUX
    set session_name "main"
    if tmux has-session -t $session_name ^/dev/null
        exec tmux attach -t $session_name
    else
        exec tmux new -s $session_name
    end
end

