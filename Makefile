links:
	echo -e "\n# LINKS"
	# Git
	ln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# zsh
	ln -fs "${PWD}/.zprofile" "${HOME}/.zprofile"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	ln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"
	mkdir -p "${HOME}/.config/fish/functions/"
	ln -fs "${PWD}/.config/fish/functions/home.fish" "${HOME}/.config/fish/functions/home.fish"
	ln -fs "${PWD}/.config/fish/functions/init.fish" "${HOME}/.config/fish/functions/init.fish"

gitl:
	./bin/install.sh gitl

stree:
	./bin/install.sh stree

locations:
	echo && echo "# LOCATIONS"
	which -a fish && echo
	which -a python3 && echo
	which -a swift && echo
	which -a rustc

versions:
	echo && echo "# VERSIONS"
	fish --version && echo
	python3 --version && echo
	swiftc --version && echo
	rustc --version

ssh:
	ssh-add

install: ssh links gitl stree locations versions
