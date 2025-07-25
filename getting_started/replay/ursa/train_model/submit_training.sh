#!/bin/bash

#SBATCH -J replay_training
#SBATCH -o slurm/training.out
#SBATCH -e slurm/training.err
#SBATCH --nodes=4
#SBATCH --tasks-per-node=4
#SBATCH --gpus-per-node=4
#SBATCH --cpus-per-task=16
#SBATCH --account=enteraccount
#SBATCH -t 24:00:00

module load conda
module load cuda
conda activate anemoi

srun anemoi-training train --config-name=config
