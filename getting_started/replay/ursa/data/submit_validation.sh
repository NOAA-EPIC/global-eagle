#!/bin/bash

#SBATCH -J validation_data
#SBATCH -o validation_data.%J.out
#SBATCH -e validation_data.%J.err
#SBATCH --account=epic
#SBATCH --partition=u1-service
#SBATCH --mem=32g
#SBATCH -t 01:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=2
#SBATCH --cpus-per-task=2

export OMP_NUM_THREADS=2

source /scratch4/NAGAPE/epic/Wei.Huang/src/miniconda3/bin/activate
module load openmpi
conda activate anemoi

srun ufs2arco replay_validation.yaml --overwrite
echo "Validation dataset is complete"
