#!/bin/bash
if ! command_exists python3; then
	return 0
fi

# set python3 as default python
alias python="python3"
alias pip="python3 -m pip"
alias venv="python3 -m venv"
export PYTHONPATH="$HOME/python"
