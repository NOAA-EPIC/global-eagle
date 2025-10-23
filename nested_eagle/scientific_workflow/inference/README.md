
Run the following to submit a job to create a 10-day forecast:

`sbatch submit_inference.sh`

This will generate a NetCDF file with your forecast in the `inference_files` directory.

Note:
Within `inference_config.yaml` you will find a path to a checkpoint. The submit script updates that for you. However, if you have trained multiple models you may have to go edit this yourself to find the specific run_id you wish to use a checkpoint from.
