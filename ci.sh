#!/usr/bin/env bash
wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda_latest.sh
bash Miniconda_latest.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
rm Miniconda_latest.sh

conda config --set binstar_upload no --set always_yes yes --set show_channel_urls yes
#conda update conda
conda install anaconda-client
conda env create -f environment.yml
source activate mybinder_pygenome
conda install nbval pytest

python run_test.py
