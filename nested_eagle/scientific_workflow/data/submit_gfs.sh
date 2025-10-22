#!/bin/bash

#SBATCH -J gfs_data
#SBATCH -o slurm/gfs_preprocessing.out
#SBATCH -e slurm/gfs_preprocessing.err
#SBATCH --account=epic
#SBATCH --partition=u1-compute
#SBATCH --mem=128g
#SBATCH --nodes=1
#SBATCH --time=24:00:00

source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate
conda activate eagle
module load openmpi gcc

export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH

python create_grids.py

ufs2arco gfs.yaml --overwrite
