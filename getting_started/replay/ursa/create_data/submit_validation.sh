#!/bin/bash

#SBATCH -J validation_data
#SBATCH -o logs/validation/preprocessing.out
#SBATCH -e logs/validation/preprocessing.err
#SBATCH --account=enter_your_account
#SBATCH --partition=u1-service
#SBATCH --mem=32g
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=2

export OMP_NUM_THREADS=2

source /enterpathtoyourminiconda/miniconda3/etc/profile.d/conda.sh
module load openmpi
conda activate anemoi

srun ufs2arco replay_validation.yaml --overwrite
echo "Validation dataset is complete"