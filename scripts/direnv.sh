#!/bin/bash
if ! command_exists direnv; then
	return 0
fi

eval "$(direnv hook zsh)"
