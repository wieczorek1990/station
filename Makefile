links:
	echo -e "\n# LINKS"
	# Git
	ln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	ln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"

dependencies:
	echo -e "\n# DEPENDENCIES"
	brew install \
cloc coreutils fish gh git-lfs helix httpie imagemagick jq klavaro links moreutils ninja numpy sox tree unzip

gitl:
	echo -e "\n# GITL"
	mkdir -p ~/Software/ && \
cd ~/Software/ && \
rm -rf gitl && \
git clone --depth=1 git@github.com:wieczorek1990/gitl.git && \
cd gitl && \
make install && \
cd -

stree:
	echo -e "\n# STREE"
	mkdir -p ~/Software/ && \
cd ~/Software/ && \
rm -rf stree && \
git clone --depth=1 git@github.com:wieczorek1990/stree.git && \
cd stree && \
make install && \
cd -

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

install: links dependencies gitl eeree locations versions
