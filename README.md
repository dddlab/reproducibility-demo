# Data Science Project Template

A [cookiecutter](https://github.com/cookiecutter/cookiecutter) template for creating a data science project repository.

1. Install Python
    ```
    curl -fSL -o ~/miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
        bash ~/miniconda.sh -b -u -p ~/miniconda3 && \
        ~/miniconda3/bin/conda init bash && \
        source ~/.bashrc
    ```
2. Install `cookiecutter`:  
    `pip install cookiecutter`
3. Run `cookiecutter gh:dddlab/reproducibility-demo`
