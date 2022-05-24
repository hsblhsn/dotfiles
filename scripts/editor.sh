#!/bin/bash
if ! command_exists vim; then
	return 0
fi

# setup editor
export VISUAL="vim"
export EDITOR="$VISUAL"
