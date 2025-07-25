This folder contains what we will consider a "hello world" configuration for the full ufs2arco + anemoi pipeline.

You will be able to create a training dataset consisting of 1 year of NOAA Replay reanalysis, train a graph-based model, run inference, and finally verification on some forecasts.

This configuration is set up to run on Ursa.

Before getting started, you will need to set up 2 conda environments.
1) a CPU-based environment for ufs2arco
2) a GPU-based environment for anemoi

Follow the instructions below for environment setup:

First, if you have not already, use these instructions to set up miniconda: https://www.anaconda.com/docs/getting-started/miniconda/install#linux

1) Create ufs2arco conda environment by running the following commands:
    - conda create -n ufs2arco python=3.12
    - conda activate ufs2arco
    - conda install -c conda-forge ufs2arco openmpi

2) Create anemoi conda environment by running the following commands:
    - ......

After the conda environments have been created, go follow instructions within each folder in this directory in order:
1) create data
2) train model
3) run inference
4) run verification
