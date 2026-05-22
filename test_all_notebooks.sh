#!/usr/bin/env bash

shopt -s globstar

cd notebooks

pytest -vvv --current-env --capture=no --nbval **/*.ipynb

exit $?
