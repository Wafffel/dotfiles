# ~/.config/fish/config.fish

# Disable greeting message
set fish_greeting

starship init fish | source

function prompt_newline --on-event fish_postexec
	echo
end
