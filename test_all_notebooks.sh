#!/usr/bin/env bash

shopt -s globstar

#command to test all notebooks
pytest -vvv --import-mode=importlib --current-env --capture=no --nbval **/*.ipynb

exit $?
