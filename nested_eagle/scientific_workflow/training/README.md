### Workflow

Run`sbatch submit_training.sh`

After submission, go into the `outputs/` folder to monitor training. You will see the following model output:

1. Logs: found within a folder including the date of your run (e.g. `2025-10-22`)

2. Checkpoints: found within a folder that matches the run_id of your training. It will resemble something like `cf574663-cfa7-4ff2-aafd-37fb5af6bef5`.

3. Plots: also found within a run_id folder (e.g. `cf574663-cfa7-4ff2-aafd-37fb5af6bef5`).

Please see our [nested-eagle documentation](https://global-eagle.readthedocs.io/en/latest/nested_eagle.html) for more information about the model architecture and quick tips on options configuration changes for testing.

-----------

TODO's
- We are currently not using multiple GPU's and need to implement that.
- Add configurations for other types of models and graphs that you can try.
