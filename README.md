# global-eagle

Go to examples folder to run the full `ufs2arco + Anemoi + wxvx` pipeline, which includes:
1) Use `ufs2arco` to create training and validation datasets
2) Use `anemoi-core` modules to train a graph-based model
3) Use `anemoi-inference` to run inference
4) Use `wxvx` to run grid-to-grid verification on a forecast

You will currently find the following configurations:
1) Use 1 year of NOAA Replay Reanalysis data to train a model for 1,000 steps, create a forecast, and verify that forecast.

NOTE: This repository is currently under development.
