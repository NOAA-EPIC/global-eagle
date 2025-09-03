Submit one job to create all data you need for training:

`sbatch submit_ufs2arco.sh`

This job creates 1.25 years of NOAA Replay data that has been processed for training with the Anemoi framework. 1 year of data (2022) will be used for training, and 0.25 years (Q1 2023) will be used for validation. This current set up takes ~45 minutes to run. I am testing different MPI configurations to see if we can speed this up, but it works for right now. 