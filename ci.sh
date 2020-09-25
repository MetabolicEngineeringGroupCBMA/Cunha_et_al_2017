

cd notebooks

# command to run all notebooks
# jupyter nbconvert --ExecutePreprocessor.kernel_name=python3 --execute --inplace --allow-errors **/*.ipynb

#command to convert all notebooks
# jupyter nbconvert **/*.ipynb

#command to test all notebooks
pytest --current-env --capture=no --nbval **/*.ipynb



exit $?
