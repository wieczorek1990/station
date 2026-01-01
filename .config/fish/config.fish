export GPG_TTY=(tty)

fish_add_path\
 /usr/local/bin/\
 /opt/homebrew/bin/\
 /opt/homebrew/sbin/\
 /opt/homebrew/opt/swift/bin/

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
    # Init
    function init
        ssh-add
    end
    # Home
    function home
        cd ~/Software/Soiree/dancing-fire/
    end
end
