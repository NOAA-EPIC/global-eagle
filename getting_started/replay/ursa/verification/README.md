
Step 1: Environment Setup
`conda create -y -n wxvx -c ufs-community -c paul.madden wxvx -c conda-forge --override-channels `
`conda activate wxvx`

Step 2: Postprocess inference run into something wxvx will seamlessly work with
`python postprocess.py postprocess_config.yaml`

Step 3: Run verification against GFS
`wxvx -c wxvx_config.yaml -t plots`

