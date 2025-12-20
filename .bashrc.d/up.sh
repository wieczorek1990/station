#!/bin/sh

OLD_LANG="${LANG}"

function in_c_language {
    export LANG=C

}

function in_old_language {
    export LANG="${OLD_LANG}"
}

function upgrade {
    echo 'Starting to upgrade.'
    sudo dnf upgrade --assumeyes --refresh

    echo 'Testing for restart needed.'
    sudo dnf needs-restarting
    if [ $? -eq 1 ]
    then
        echo 'Restarting needed.'
        read -p 'Do you wish to reboot now? (y/n): ' ask
        if [[ $ask == 'y' || $ask == 'yes' || $ask == 'Y' || $ask == 'YES' ]]
        then
           sudo reboot now
        fi
    else
        echo 'Exiting without reboot.'
    fi
    echo 'Done.'

}

function up {
    in_c_language
    upgrade
    in_old_language
}
