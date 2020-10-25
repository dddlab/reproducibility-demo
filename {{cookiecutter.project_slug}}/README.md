# {{ cookiecutter.project_name }}

{{ cookiecutter.project_description }}

## Instructions

```bash
# install dependencies
sudo apt-get update && \
   sudo apt-get install -y make git docker.io docker-compose && \
   sudo usermod -aG docker $USER && \
   newgrp docker

make setup # initial setup
make start # start jupyter notebook server
make stop  # stop jupyter notebook server
```
