## Workflow

Run `sbatch submit_grids.sh`
- This creates some static grid files that will be used for regridding later in the pipeline.
- Once this has completed you can move onto dataset creations.
- Note: this creates static files that you can reuse, so if you run through this pipeline multiple times it may not be necessary to always re-run this.


Run `sbatch submit_gfs.sh` followed by `sbatch submit_hrrr.sh`
- You can run both of these at the same time. 
- One loads GFS data and the other is loading HRRR data.
- Ideally, we will just submit these together in one job. However, we are currently restricted to 4 cores per job on Ursa at the moment, so this makes the whole process go a bit faster.

Note: We are only loading ~2 years of data as of right now. This takes about 10 hours to run. The maximum time for a service job on Ursa is 24 hours, so we are unable to pull in the full archive (~approx 10 years). Once we (hopefully) can use more cores or run jobs for longer periods of time we can update this workflow to include all data, as its just a simple change in the yaml files.

Please see our [documentation](https://global-eagle.readthedocs.io/en/latest/data_creation.html) for some quick tips and notes on this particular configuration if you wish to make any edits for testing.

For more in-depth information about ufs2arco capabilities, see the [ufs2arco documentation](https://ufs2arco.readthedocs.io/en/latest/)