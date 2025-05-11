#!/bin/bash
# WARNING: You MUST run this script using 'source env.sh' (not './env.sh')

# Directory Path
ENV_DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setting
## WARNING: You MUST Install CUDA Toolkit before run this script: https://developer.nvidia.com/cuda-12-8-0-download-archive
## Python Release: https://www.python.org/downloads/
ENV_NAME="cu128"
PYTHON_VERSION="3.12.10"

# Environment Variable
## PYENV
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
## CUDA
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH

echo "Install Python $PYTHON_VERSION"
pyenv install -s $PYTHON_VERSION

echo "Create Python Virtual Env: $ENV_NAME"
pyenv virtualenv $PYTHON_VERSION $ENV_NAME

echo "Activate Python Virtual Env"
pyenv activate $ENV_NAME

echo "Upgrade pip and install requirements"
pip install --upgrade pip
pip install -r $ENV_DIRECTORY/torch_requirements.txt
pip install -r $ENV_DIRECTORY/requirements.txt
