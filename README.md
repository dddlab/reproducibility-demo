# Data Science Project Template

A [cookiecutter](https://github.com/cookiecutter/cookiecutter) template for creating a data science project repository.

This template makes it easy to start your Jupyter notebook on a cloud VM. The following instructions have been tested on Google Cloud Platform with Debian 10.

There are three stages in deploying your own Jupyter notebook on the cloud.

1. Stage 1: Create a virtual machine and login using ssh
2. Stage 2: Use `cookiecutter` to start your project directory
3. Stage 3: From inside your project directory, configure and run your Jupyter notebook

## Stage 1: Create a Virtual Machine

Debian 10 (Buster)

## Stage 2: Instantiate Project from Template

* Python (Miniconda3)
    ```
    curl -fSL -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
        bash ~/miniconda.sh -b -u -p ~/miniconda3 && \
        ~/miniconda3/bin/conda init bash && \
        source ~/.bashrc
    ```
* `cookiecutter`
    `pip install cookiecutter`

Run `cookiecutter gh:dddlab/reproducibility-demo` to create your project directory

## Stage 3

Follow `[project-directory]/README.md` to launch your Jupyter notebook!

* `git`
* `make`
* `docker` and `docker-compose`
