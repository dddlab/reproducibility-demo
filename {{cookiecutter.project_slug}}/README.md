# {{ cookiecutter.project_name }}

{{ cookiecutter.project_description }}

```bash
# install necessary packages on debian or ubuntu
sudo apt-get update && \
   sudo apt-get install -y wget git docker.io docker-compose && \
   sudo usermod -aG docker $USER && \
   newgrp docker

git clone https://github.com/{{ cookiecutter.github_repo }}.git
cd {{ cookiecutter.github_repo }}/
make setup
make build
```

### Start/Stop Jupyter notebook server

```bash
make start
make stop
```

## Running on Binder

* File `binder/Dockerfile` defines a docker image for Binder sessions
* Update base image to point to a [stable docker image](https://hub.docker.com/repository/docker/dddlab/ds-project-template/tags?page=1)
