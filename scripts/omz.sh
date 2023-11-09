#!/bin/bash
# ignore if omz is already installed
if command_exists omz; then
	return 0
fi

export ZSH="$HOME/.oh-my-zsh"
if [ ! -f $ZSH/oh-my-zsh.sh ]; then
	return 0
fi

ZSH_THEME="refined"
plugins+=(
	macos
	git
	docker
	brew
	gcloud
	gh
	kubectl
)

source $ZSH/oh-my-zsh.sh
