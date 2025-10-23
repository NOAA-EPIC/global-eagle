# Welcome to Eagle 

This repository contains various configurations to run through a machine learning pipeline for weather prediction.

Various directories will guide you through an entire ML pipeline.

1) Data preprocessing using ufs2arco to create training, validation, and test datasets
2) Model training using anemoi-core modules to train a graph-based model
3) Creating a forecast with anemoi-inference to run inference from a model checkpoint
4) Verifying your forecast (or multiple!) with wxvx to verify against gridded analysis or observervations

For more information about each step, please see our documentation: https://global-eagle.readthedocs.io/en/latest/

---------------------

Acknowledgments:

ufs2arco: Tim Smith (NOAA Physical Sciences Laboratory)
https://github.com/NOAA-PSL/ufs2arco

Anemoi: European Centre for Medium-Range Weather Forecasts
https://github.com/ecmwf/anemoi-core
https://github.com/ecmwf/anemoi-inference

wxvx: Paul Madden (NOAA Global Systems Laboratory/Cooperative Institute for Research In Environmental Sciences)
https://github.com/maddenp-cu/wxvx
