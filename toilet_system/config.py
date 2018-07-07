import os
import yaml

PYTHON_ENV = os.environ.get("PYTHON_ENV")
if PYTHON_ENV == "docker":
    config_file = 'config/docker.yml'
else:
    config_file = 'config/default.yml'
with open(config_file, 'r') as f:
    config = yaml.load(f)
