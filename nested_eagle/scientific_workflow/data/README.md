Run `sbatch submit_gfs.sh` first.

Wait a few minutes until you see grids in the folder ("global_one_degree.nc" and ""hrrr_15km.nc").

Then, run `sbatch submit_hrrr.sh`.

Ideally, we will just submit these together in one job. We are restricted to 4 cores per job on Ursa at the moment, so this makes the whole process go a bit faster. 

Additonally, we are only pulling in ~2 years of data. This takes about 10 hours to run. The maximum time for a service job on Ursa is 24 hours, so we are unable to pull in the fully archive (~approx 10 years). Once we (hopefully) can use more cores or run jobs for longer periods of time we can update this workflow to include all data, as its just a simple change in the yaml files.