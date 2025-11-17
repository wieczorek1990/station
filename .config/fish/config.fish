export GPG_TTY=(tty)
fish_add_path ~/.local/bin /opt/homebrew/bin/ /opt/homebrew/sbin/
set -U fish_greeting

function fish_prompt
    echo -n (whoami)':'(prompt_pwd)' € '
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
