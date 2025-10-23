#!/bin/bash

#SBATCH -J nested_eagle
#SBATCH -o slurm/training.out
#SBATCH -e slurm/training.err
#SBATCH --nodes=1
#SBATCH --account=epic
#SBATCH -t 03:00:00
#SBATCH --partition=u1-h100
#SBATCH --gres=gpu:h100:1
#SBATCH --mem=128g
#SBATCH --qos=gpuwf
#SBATCH --ntasks-per-node=1

source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate 
conda activate eagle
module load openmpi
module load cuda
module load gcc
export SLURM_GPUS_PER_NODE=1
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH

anemoi-training train --config-name=config
