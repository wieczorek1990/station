install:
	# Git
	gln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	gln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"

dependencies:
	brew install coreutils

versions:
	fish --version && echo
	python3 --version && echo
	swift --version && echo
	rustc --version
