FROM jupyter/scipy-notebook:dc57157d6316

ARG NB_USER
ARG NB_UID
ENV USER ${NB_USER}
ENV HOME /home/${NB_USER}

USER root
COPY . ${HOME}/work
RUN chown -R ${NB_USER} ${HOME}

USER ${NB_USER}
RUN pip install cvxpy
