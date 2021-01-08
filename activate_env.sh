# !/bin/bash

function abspath() {
    [[ $1 = /* ]] && echo $1 || echo "$PWD/${1#./}"
}

python3 -m venv "venv"

pushd "$(abspath)/venv/bin/"
source activate
popd

pip3 install -r "$@"
