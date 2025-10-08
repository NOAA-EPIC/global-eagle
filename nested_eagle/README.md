conda

```
conda create -n eagle python=3.11
conda activate eagle
module load cuda gcc openmpi
conda install -c conda-forge xesmf
conda install -c conda-forge ufs2arco=0.17.1
conda install -c conda-forge matplotlib cartopy cmocean
pip install 'torch<2.7' anemoi-datasets==0.5.26 anemoi-graphs==0.6.4 anemoi-models==0.9.2 anemoi-training==0.6.2 anemoi-inference==0.7.1 anemoi-utils==0.4.35 anemoi-transform==0.1.16
pip install 'flash-attn<2.8' --no-build-isolation
pip install eagle-tools
conda install -c conda-forge esmf=8.7.0=nompi*
```
