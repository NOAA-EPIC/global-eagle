## Workflow

#### Step 1:
Run postprocessing script in your `eagle` conda env:
`python postprocess.py`

#### Step 2:
After post-processing is complete, run:
`sbatch submit_validation.sh`

Now go to `run/plots/` and open some plots showing RMSE and ME for various variables. 
