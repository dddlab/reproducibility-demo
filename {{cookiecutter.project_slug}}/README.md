# {{ cookiecutter.project_name }}

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/{{ cookiecutter.github_repo }}/main)

{{ cookiecutter.project_description }}

## Instructions

### Install Dependencies

```bash
sudo apt-get update && \
   sudo apt-get install -y make git docker.io docker-compose && \
   sudo usermod -aG docker $USER && \
   newgrp docker
```

### Setup and Start/Stop Jupyter Notebook

```
make setup # initial setup
make start # start jupyter notebook server
make stop  # stop jupyter notebook server
```

When your notebook server is running, you can connect to it by going to `https://[virtual-machine-External-IP][:PORT]`. (The port can be omitted if 443, which is the default for HTTPS). You will see a warning that your connection is not private that you can safely [bypass](https://medium.com/idomongodb/chrome-bypassing-ssl-certificate-check-18b35d2a19fd).

### Commit to Github

```bash
git init
git add * .gitignore
git commit -m'first commit'
git branch -M main
git remote add origin https://github.com/{{ cookiecutter.github_repo }}.git
git push -u origin main
```

_Created from [dddlab/reproducibility-demo](https://github.com/dddlab/reproducibility-demo) cookiecutter template_
