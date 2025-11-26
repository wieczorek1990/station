export GPG_TTY=(tty)
fish_add_path ~/.local/bin/ /opt/homebrew/bin/ /opt/homebrew/sbin/
set -U fish_greeting

if status is-interactive
    # Prompt
    function fish_prompt
        echo -n (whoami)':'(prompt_pwd)' € '
    end
    # Updates
    function up
        brew update && brew upgrade && brew doctor
    end
end
