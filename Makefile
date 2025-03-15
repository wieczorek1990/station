install:
	# Profile
	ln -fs ${PWD}/.profile ${HOME}/.profile
	# Fish
	mkdir -p ${HOME}/.config/fish/
	ln -fs ${PWD}/.config/fish/config.fish ${HOME}/.config/fish/config.fish
	# Git
	ln -fs ${PWD}/.gitconfig ${HOME}/.gitconfig

versions:
	fish --version && echo
	python3 --version && echo
	swift --version && echo
	rustc --version
