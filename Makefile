install:
	# VIM
	gln -fs "${PWD}/.vimrc" "${HOME}/.vimrc"
	# Git
	gln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	gln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"

dependencies:
	brew install coreutils fish python rust swift

versions:
	fish --version && echo
	python3 --version && echo
	swiftc --version && echo
	rustc --version

locations:
	which fish
	which python3
	which swift
	which rustc
