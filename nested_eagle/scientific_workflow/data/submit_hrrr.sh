#!/bin/bash

#SBATCH -J hrrr_data
#SBATCH -o slurm/hrrr_preprocessing.out
#SBATCH -e slurm/hrrr_preprocessing.err
#SBATCH --account=epic
#SBATCH --partition=u1-compute
#SBATCH --mem=128g

source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate
conda activate eagle
module load openmpi gcc

export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH

srun ufs2arco hrrr.yaml --overwrite
