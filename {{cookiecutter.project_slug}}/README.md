# {{ cookiecutter.project_name }}

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/{{ cookiecutter.github_repo }}/main)

{{ cookiecutter.project_description }}

## Instructions

### Get started

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
