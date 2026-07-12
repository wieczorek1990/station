set -U fish_greeting

if status is-interactive
    function fish_prompt
        echo -n (whoami)':'(prompt_pwd)' € '
    end
end
