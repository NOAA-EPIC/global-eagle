#!/bin/bash

#SBATCH -J nested_eagle_inference
#SBATCH -o slurm_inference.out
#SBATCH -e slurm_inference.err
#SBATCH --nodes=1
#SBATCH --account=epic
#SBATCH -t 01:00:00
#SBATCH --partition=u1-h100
#SBATCH --gres=gpu:h100:1
#SBATCH --mem=64g
#SBATCH --qos=gpuwf
#SBATCH --ntasks-per-node=1

export CHECKPOINT=`ls -d ../training/outputs/checkpoint/*`

sed -i "/^.*checkpoint_path:.*$/c\checkpoint_path: $CHECKPOINT\/inference-last.ckpt" inference.yaml

source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate
conda activate eagle
module load cuda

eagle-tools inference inference.yaml
