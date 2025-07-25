This folder contains what we will consider a "hello world" configuration for the full ufs2arco + anemoi pipeline.

You will be able to create a training dataset consisting of 1 year of NOAA Replay reanalysis, train a graph-based model, run inference, and finally verification on some forecasts.

This configuration is set up to run on Ursa.

Before getting started, you will need to set up a conda environment. First, if you have not already, use these instructions to set up miniconda: https://www.anaconda.com/docs/getting-started/miniconda/install#linux. Be sure to install this in your scratch directory, as it's quite big.

Create your conda environment by running the following commands:
- source /path/to/your/miniconda/in/scratch/miniconda3/bin/activate
- conda create -n anemoi python=3.12
- conda activate anemoi
- module load cuda
- pip install anemoi-datasets==0.5.25 anemoi-graphs==0.6.2 anemoi-models==0.8.1 anemoi-training==0.5.1 anemoi-inference==0.6.3 flash-attn mpi4py trimesh 'numpy<2.3' 'earthkit-data<0.14.0' --force-reinstall
- conda install -c conda-forge ufs2arco openmpi

After the conda environments have been created, go follow instructions within each folder in this directory in order:
1) create_data
2) train_model
3) run_inference
4) run_verification
