First, modify the checkpoint path in `inference_config.yaml` with the path to your checkpoint data from the training step. If you have used the defaults, this will just be changing the run ID to the one noted during that step.

Then, modify `submit_inference.sh` with your project account and the path to your miniconda installation.

Finally run the following to submit a job to create a 10-day forecast:

`sbatch submit_inference.sh`

This will generate a NetCDF file with your forecast in the `inference_files` directory.
