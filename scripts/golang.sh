#!/bin/bash
if ! command_exists go; then
	return 0
fi

# setup go env
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH="$PATH:$GOBIN"
