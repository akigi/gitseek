
VENV_NAME="venv-flask"
SETUP_DIR_PATH="$(dirname "$0" | realpath)"
VENV_PATH=${SETUP_DIR_PATH}/${VENV_NAME}

# cd
cd $SETUP_DIR_PATH

# Exit venv
if [ -v "$VIRTUAL_ENV" ];
then
    echo "Exit venv: $VIRTUAL_ENV"
    exit
    return
fi

# Create venv
echo "Checking venv: ${VENV_PATH}"
if [ ! -d "$VEMV_PATH" ];
then
    echo "Not exist"
    echo "Creating venv..."
    python3 -m venv ${VENV_NAME}
else
    echo "Already exist venv: ${VENV_NAME}"
fi

# Activate venv
echo "Activating venv: ${VENV_NAME}"
source ${VENV_PATH}/bin/activate
    
# pip install
echo "Installing libraries..."
pip install flask

echo "done."





