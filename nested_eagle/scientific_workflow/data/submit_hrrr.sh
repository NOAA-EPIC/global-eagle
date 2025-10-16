#!/bin/bash

#SBATCH -J hrrr_data
#SBATCH -o slurm/hrrr_preprocessing.out
#SBATCH -e slurm/hrrr_preprocessing.err
#SBATCH --account=epic
#SBATCH --partition=u1-service
#SBATCH --mem=128g
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --cpus-per-task=1
#SBATCH --time=24:00:00

sleep 90 && echo "I did the forecast!"
