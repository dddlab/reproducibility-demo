# Reproducibility Demo

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/dddlab/reproducibility-demo/master)

## Binder

### Creating Binder Badge

Created on [Binder](https://mybinder.org):
* GitHub: `https://github.com/dddlab/reproducibility-demo`
* Git branch, tag, or commit: `prep-for-binder`
* (Optional) Path to a notebook file: `work/nonneg_matrix_fact.ipynb`

### Pushing back to GitHub

* The cloned repository on Binder will say `master` branch
* In order to push back to `prep-for-binder` branch, checkout the branch first:  
`git checkout prep-for-binder`

## Starting Jupyter Notebook on VM

* Jupyter Notebook environment is started with `docker-compose.yml`
* Docker image will be created from `Dockerfile` if necessary
* `setup.sh` will download a utility to create a password an encryption keys for your Jupyter notebook
* Install docker and other utilities:
  ```bash
  # install necessary packages on debian or ubuntu
  sudo apt-get update && \
    sudo apt-get install -y wget git docker.io docker-compose && \
    sudo usermod -aG docker $USER

  # re-login to to apply docker group setting
  ```
* Build docker image and start Jupyter notebook server
  ```bash
  git clone https://github.com/dddlab/reproducibility-demo.git
  cd reproducibility-demo/
  git checkout prep-for-binder
  chmod u+x setup.sh
  ./setup.sh 
  docker-compose up --build -d
  ```
* Open `https://[VM ip address]:8889` to reach your server (note the default port 8889 in `docker-compose.yml`).
