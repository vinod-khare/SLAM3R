## Installs SLAM3R and its dependencies in a virtual environment.
#  Tested on (WSL) Ubuntu 22.04 with Python 3.12 and CUDA 12.8.

# if .venv doesn't exist them create it and install the dependencies
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
fi

source .venv/bin/activate

python -m pip install --upgrade pip "setuptools<82.0" wheel

python -m pip install torch torchaudio torchvision --index-url https://download.pytorch.org/whl/cu128

python -m pip install -r requirements.txt
python -m pip install -r requirements_optional.txt

python -m pip install -U xformers --index-url https://download.pytorch.org/whl/cu128

python -m pip install slam3r/pos_embed/curope/ --no-build-isolation
