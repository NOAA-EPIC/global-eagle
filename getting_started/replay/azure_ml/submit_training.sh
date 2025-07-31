DATA_PATH=$1
OUTPUT_DIR=$2

echo "Input data: $DATA_PATH"
echo "Directory for output files: $OUTPUT_DIR"

mkdir -p replay

ln -s $DATA_PATH replay
ln -s $OUTPUT_DIR replay/training-output

export RANK=$OMPI_COMM_WORLD_NODE_RANK
export WORLD_RANK=$OMPI_COMM_WORLD_NODE_RANK
export GLOBAL_RANK=$OMPI_COMM_WORLD_NODE_RANK
export LOCAL_RANK=$OMPI_COMM_WORLD_NODE_RANK
export WORLD_SIZE=1
export ANEMOI_BASE_SEED=1000
export SLURM_GPUS_PER_NODE=1
export SLURM_NNODES=1

# move to environment
pip install flash-attn

#mpiexec --allow-run-as-root -n $WORLD_SIZE anemoi-training train --config-name=config
mpirun -np 1 anemoi-training train --config-name=config