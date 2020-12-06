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
make start # start jupyter notebook (password secured)
make colab # start jupyter notebook (no security)
make stop  # stop jupyter notebook server
```

If your notebook started with `make start`, you can connect to it by going to `https://[virtual-machine-External-IP][:PORT]`. (The port can be omitted if 443, which is the default for HTTPS). You will see a warning that your connection is not private that you can safely [bypass](https://medium.com/idomongodb/chrome-bypassing-ssl-certificate-check-18b35d2a19fd).

If your notebook started with `make colab`, the server is running without any authentication or encryption. This mode is meant to be used as a way to start a remote kernel for your Colaboratory notebook to connect to. Refer to [Colaboratory documentation](https://research.google.com/colaboratory/local-runtimes.html)) for details on how to connect to a remote kernel with ssh port forwarding.

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
