LN = ln

install:
	# bash
	mkdir -p "${HOME}/.bashrc.d/"
	${LN} -fs "${PWD}/.bashrc.d/up.sh" "${HOME}/.bashrc.d/up.sh"
	# VIM
	${LN} -fs "${PWD}/.vimrc" "${HOME}/.vimrc"
	# Git
	${LN} -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	${LN} -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"

dependencies:
	brew install\
 coreutils gh git gnupg imagemagick python3-devel readline-devel sox sponge tree vim\
 fish python rust swift

versions:
	fish --version && echo
	python3 --version && echo
	swiftc --version && echo
	rustc --version

locations:
	which -a fish && echo
	which -a python3 && echo
	which -a swift && echo
	which -a rustc
