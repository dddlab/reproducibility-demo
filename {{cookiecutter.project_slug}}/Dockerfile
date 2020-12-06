FROM {{ cookiecutter.base_jupyter_notebook_image }}

# start binder compatibility
# from https://mybinder.readthedocs.io/en/latest/tutorials/dockerfile.html

ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

COPY . ${HOME}/work
USER root
RUN chown -R ${NB_UID} ${HOME}

USER ${NB_USER}

RUN pip install cookiecutter
RUN pip install --upgrade jupyter_http_over_ws>=0.0.7 && \
    jupyter serverextension enable --py jupyter_http_over_ws
