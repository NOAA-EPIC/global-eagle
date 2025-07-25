#!/bin/bash

#SBATCH -J training_data
#SBATCH -o logs/training/preprocessing.out
#SBATCH -e logs/training/preprocessing.err
#SBATCH --account=enter_your_account
#SBATCH --partition=u1-service
#SBATCH --mem=64g
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=2

export OMP_NUM_THREADS=2

source ~/miniconda3/etc/profile.d/conda.sh
module load openmpi
conda activate ufs2arco

srun ufs2arco replay_training.yaml --overwrite
echo "Training dataset is complete"