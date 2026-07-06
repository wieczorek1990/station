links:
	# Git
	ln -fs "${PWD}/.gitconfig" "${HOME}/.gitconfig"
	# Fish
	mkdir -p "${HOME}/.config/fish/"
	ln -fs "${PWD}/.config/fish/config.fish" "${HOME}/.config/fish/config.fish"

dependencies:
	brew install \
cloc coreutils fish gh git-lfs helix httpie imagemagick jq klavaro links moreutils ninja numpy sox tree unzip

gitl:
	mkdir -p ~/Software/ && \
cd ~/Software/ && \
rm -rf gitl && \
git clone --depth=1 git@github.com:wieczorek1990/gitl.git && \
cd gitl && \
make install && \
cd -

stree:
	mkdir -p ~/Software/ && \
cd ~/Software/ && \
rm -rf stree && \
git clone --depth=1 git@github.com:wieczorek1990/stree.git && \
cd stree && \
make install && \
cd -

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

install: links dependencies gitl stree versions locations