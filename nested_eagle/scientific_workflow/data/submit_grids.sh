#!/bin/bash

#SBATCH -J create_grids
#SBATCH -o slurm_preprocessing.%j.out
#SBATCH -e slurm_preprocessing.%j.err
#SBATCH --account=epic
#SBATCH --partition=u1-service
#SBATCH --mem=128g
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1

source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate
conda activate eagle
module load gcc
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH
python create_grids.py
