#!/bin/bash
if ! command_exists cargo; then
	return 0
fi

. "$HOME/.cargo/env"
