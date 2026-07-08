fish_add_path\
 ~/.local/bin/\
 /usr/local/bin/\
 /opt/homebrew/bin/

set -U fish_greeting

if status is-interactive
    function fish_prompt
        echo -n (whoami)':'(prompt_pwd)' € '
    end
end
