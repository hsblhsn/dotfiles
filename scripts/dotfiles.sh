#!/bin/bash

dotfiles() {
	command="$1"
	print_help() {
		echo "Usage: dotfiles <command>"
		echo "Commands:"
		echo "  update - update dotfiles"
	}

	if [ -z "$command" ]; then
		print_help
		return 1
	fi

	if [ "$command" = "update" ]; then
		echo "updating dotfiles..."
		cd $DOTFILES_DIR && git pull
		return 0
	fi

	echo "Unknown command: $command"
	print_help
}
