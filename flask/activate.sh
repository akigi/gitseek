
VENV_NAME="venv-flask"
SETUP_DIR_PATH="$(dirname "$0" | realpath)"
VENV_PATH=${SETUP_DIR_PATH}/${VENV_NAME}

/bin/bash -c "source "$VENV_PATH/bin/activate"; exec /bin/bash -i"
