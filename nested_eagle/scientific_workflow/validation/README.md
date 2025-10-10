Run postprocessing script in your eagle conda env:
`python postprocess.py`

Next, install wxvx: 
`conda create -y -n wxvx -c ufs-community -c paul.madden wxvx -c conda-forge --override-channels`

Activate:
`conda activate wxvx`

Run:
`wxvx -c wxvx_lam.yaml -t plots`
