Run`sbatch submit_training.sh`

After submission, go into the `outputs/` folder to monitor training. You will see:

Logs
- Can be found within a folder including the date of your run (e.g. `2025-10-22`)

Checkpoints
- Can be found within a folder that matches the run_id of your training. It will resemble something like `cf574663-cfa7-4ff2-aafd-37fb5af6bef5`

Plots
- The plots folder will also contain run_id folders.

-----------

TODO's
- We are currently not using multiple GPU's and need to implement that.
- Add configurations for other types of models and graphs that you can try.
