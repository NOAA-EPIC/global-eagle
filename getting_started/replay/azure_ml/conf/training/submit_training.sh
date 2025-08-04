DATA_PATH=$1
OUTPUT_DIR=$2

echo "Input data: $TRAINING_DATA_PATH"
echo "Directory for output files: $OUTPUT_DIR"

mkdir -p /workdir/data
mkdir -p /workdir/output

# Symlinks so we can connect with data within blob storage
ln -s "$TRAINING_DATA_PATH" /workdir/data/replay.zarr
ln -s "$OUTPUT_DIR" /workdir/output

export WORLD_SIZE=1
export ANEMOI_BASE_SEED=1000
export SLURM_GPUS_PER_NODE=1
export SLURM_NNODES=1
export RANK=0

pip install flash-attn

mpirun -np 1 anemoi-training train --config-name=config.yaml
