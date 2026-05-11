# 1) choose base container
# generally use the most recent tag

# base notebook, contains Jupyter and relevant tools
# See https://github.com/ucsd-ets/datahub-docker-stack/wiki/Stable-Tag 
# for a list of the most current containers we maintain
ARG BASE_CONTAINER=ghcr.io/ucsd-ets/scipy-ml-notebook:2025.2-stable

FROM $BASE_CONTAINER

LABEL maintainer="Anirudh Nayak <a2nayak@ucsd.edu>"

# 2) change to root to install packages
USER root

RUN apt-get update

RUN apt-get -y install htop openjdk-17-jdk

# 3) install packages using notebook user
#USER jovyan

# RUN conda install -y scikit-learn

#RUN pip install --no-cache-dir networkx scipy

# Override command to disable running jupyter notebook at launch
# CMD ["/bin/bash"]
