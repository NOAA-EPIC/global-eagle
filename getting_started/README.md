This folder contains what we will consider a "hello world" configuration for the full ufs2arco + anemoi pipeline.

You will be able to create a training dataset consisting of 1 year of NOAA Replay reanalysis, train a graph-based model, run inference, and finally verification on some forecasts.

This configuration is set up to run on Ursa.

Before getting started, you will need to set up 2 conda environments.
1) a CPU-based environment for ufs2arco
2) a GPU-based environment for anemoi

Follow the instructions below for environment setup:

First, f you have not already, use these instructions to set up miniconda: https://www.anaconda.com/docs/getting-started/miniconda/install#linux

1) ufs2arco - 
    a) conda create -n ufs2arco python=3.12
    b) conda activate ufs2arco
    c) conda install -c conda-forge ufs2arco openmpi
