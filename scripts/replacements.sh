#!/bin/bash

# https://github.com/rs/curlie
if command_exists curlie; then
	alias ogcurl="$(which curl)"
	alias curl="curlie"
fi

# https://github.com/hsblhsn/trash
if command_exists trash; then
	alias ogrm="$(which rm)"
	alias rm="trash"
fi
