export GPG_TTY=(tty)
fish_add_path ~/.local/bin
fish_add_path /opt/homebrew/bin/
set -U fish_greeting

function fish_prompt
    echo -n (whoami)':'(prompt_pwd)' € '
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
