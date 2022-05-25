#!/bin/bash
export DF_WORKSPACE_DIR="${HOME}/workspace"
if [ ! -d "${DF_WORKSPACE_DIR}" ]; then
	echo "Creating workspace directory: ${DF_WORKSPACE_DIR}"
	return 0
fi

TMP_PWD="$(pwd)"
if [ "${TMP_PWD}" = "${HOME}" ] || [ "${TMP_PWD}" = "/" ]; then
	cd "${DF_WORKSPACE_DIR}" # go to workplace directory if pwd is home
fi
unset TMP_PWD

# command to go to workspace directory
wpd() {
	cd "${DF_WORKSPACE_DIR}/${1}"
}
