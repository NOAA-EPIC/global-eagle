#!/bin/bash

#SBATCH -J nested_eagle_inference
#SBATCH -o slurm_inference.out
#SBATCH -e slurm_inference.err
#SBATCH --nodes=1
#SBATCH --account=epic
#SBATCH -t 01:00:00
#SBATCH --partition=u1-h100
#SBATCH --gres=gpu:h100:1
#SBATCH --mem=128g
#SBATCH --qos=gpuwf
#SBATCH --ntasks-per-node=1

source /ENTERPATHTOYOURMINICONDAINSCRATCH//miniconda3/bin/activate
conda activate eagle
module load cuda gcc

eagle-tools inference inference.yaml