import eagle.tools.prewxvx as prewxvx
import yaml

with open("postprocess_lam.yaml", "r") as file:
    lam_config = yaml.safe_load(file)

prewxvx.main(lam_config)

# with open("postprocess_global.yaml", "r") as file:
#    global_config = yaml.safe_load(file)
#
# prewxvx.main(global_config)
