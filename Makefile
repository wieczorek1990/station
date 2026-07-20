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
	ln -fs "${PWD}/.config/fish/functions/init.fish" "${HOME}/.config/fish/functions/init.fish"

gitl:
	./bin/install.sh gitl

stree:
	./bin/install.sh stree

dependencies_fedora:
	sudo dnf install -y fish helix python3 swift-lang rust

dependencies_macos:
	sudo brew install fish helix python3 swift rust

locations:
	echo && echo "# LOCATIONS"
	which -a helix && echo
	which -a fish && echo
	which -a python3 && echo
	which -a swift && echo
	which -a rustc

versions:
	echo && echo "# VERSIONS"
	helix --version && echo
	fish --version && echo
	python3 --version && echo
	swiftc --version && echo
	rustc --version

install: links gitl stree locations versions
