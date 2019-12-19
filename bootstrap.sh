#!/bin/bash

function syncFiles() {
    rsync --exclude ".git/" \
	  --exclude "themes" \
	  --exclude ".DS_Store" \
	  --exclude ".osx" \
	  --exclude "bootstrap.sh" \
	  --exclude "README.md" \
	  -avh --no-perms . ~;
}

if [ "$1" == "-f" ]; then
    syncFiles;
else
    read -p "Do you want to sync files to your home directory? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
	syncFiles;
    fi;
fi;
unset syncFiles;
