#!/bin/bash

#SBATCH -J perform_validation 
#SBATCH -o slurm_%d.%j.out
#SBATCH -e slurm_%d.%j.err
#SBATCH --account=epic
#SBATCH --partition=u1-service
#SBATCH --mem=128g
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=4 

source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate

export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH

conda activate wxvx 

wxvx -c wxvx_lam.yaml -t plots
