links:
	echo -e "\n# LINKS"
	# Git
	ln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# zsh
	ln -fs "${PWD}/.zprofile" "${HOME}/.zprofile"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	ln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"

macos_dependencies:
	echo -e "\n# DEPENDENCIES"
	brew install \
cloc coreutils fish gh git-lfs gnuplot helix httpie imagemagick jq klavaro links moreutils ninja numpy sox tree unzip

fedora_dependencies:
	echo -e "\n# DEPENDENCIES"
	dnf install --assumeyes \
cloc coreutils fish gh git-lfs gnuplot helix httpie ImageMagick jq klavaro links moreutils ninja numpy sox tree unzip

gitl:
	./bin/install.sh gitl

stree:
	./bin/install.sh stree

locations:
	echo -e "\n# LOCATIONS"
	which -a fish && echo
	which -a python3 && echo
	which -a swift && echo
	which -a rustc

versions:
	echo -e "\n# VERSIONS"
	fish --version && echo
	python3 --version && echo
	swiftc --version && echo
	rustc --version

ssh:
	ssh-add

install: ssh links gitl stree locations versions
