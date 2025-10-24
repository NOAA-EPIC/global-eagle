### Overview

There are two folders within this `nested_eagle` directory:

1) `scientific_workflow` will guide you through a whole ML pipeline to create training data, train a model, run inference, and verify a forecast. 
2) `operational_inference` provides scripts to run inference from a checkpoint in near real time. These scripts will assume you have a checkpoint from completing `scientifc_workflow` and want to run a near real time forecast with it.

----------

### Conda Environment Setup

Before starting anything, you must create two conda environments.
1) `eagle` environment to use for data creation, training, and inference
2) `wxvx` environment to use for verification

These environments have already been made for you on Ursa and can by found by running `source /scratch4/NAGAPE/epic/role-epic/miniconda/bin/activate`

Then, simply activate the environments by running `conda activate eagle` or `conda activate wxvx`


If you are not running on Ursa, or wish to create the environments yourself, run the following commands:

`eagle` environment to use for data creation, training, and inference:
```
module load cuda gcc openmpi
conda env create -f environment.yaml
conda activate eagle
pip install 'flash-attn<2.8' --no-build-isolation
```

`wxvx` environment to use for verification:
```
conda create -y -n wxvx -c ufs-community -c paul.madden wxvx -c conda-forge --override-channels
```

Note: These commands work on Ursa and may require tweaking for other machines.