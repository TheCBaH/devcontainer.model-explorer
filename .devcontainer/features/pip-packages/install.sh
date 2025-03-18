#!/bin/sh
set -e
set -x

echo "Activating feature 'pip_packages'"

PACKAGES=${PACKAGES:-$@}
OPTIONS=${OPTIONS:-$@}
echo "Selected packages: $PACKAGES"

python3 -m pip config set global.break-system-packages true
python3 -m pip --no-cache-dir install $PACKAGES $OPTIONS