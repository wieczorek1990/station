links:
	echo -e "\n# LINKS"
	# Git
	# Please create a .gituser configuration file for user(name, email)
	ln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# zsh
	ln -fs "${PWD}/.zprofile" "${HOME}/.zprofile"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	ln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"
	# Fish functions
	mkdir -p "${HOME}/.config/fish/functions/"
	ln -fs "${PWD}/.config/fish/functions/init.fish" "${HOME}/.config/fish/functions/init.fish"
	# Helix
	mkdir -p "${HOME}/.config/helix/"
	ln -fs "${PWD}/.config/helix/config.toml" "${HOME}/.config/helix/config.toml"

gitl:
	./bin/install.sh gitl

stree:
	./bin/install.sh stree

fish:
	./bin/install.sh fish-shell

dependencies_fedora:
	sudo dnf install -y fish helix python3 swift-lang rust

dependencies_macos:
	sudo brew install fish helix python3 swift rust

locations:
	echo && echo "# LOCATIONS"
	which -a hx && echo
	which -a fish && echo
	which -a python3 && echo
	which -a swift && echo
	which -a rustc && echo
	which -a ruby

versions:
	echo && echo "# VERSIONS"
	hx --version && echo
	fish --version && echo
	python3 --version && echo
	swiftc --version && echo
	rustc --version && echo
	ruby --version

install: links gitl stree fish locations versions
