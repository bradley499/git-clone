#!/bin/bash

# Automatically git clone https connection to ssh

if [[ $# -eq 0 ]]; then
	exit 0
fi

if [[ $1 == "https://github.com/*" ]]; then
	git clone git@github.com:${1:19}
else
	git clone $1
fi
