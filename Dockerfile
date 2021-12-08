ARG OWNER=jupyter
ARG BASE_CONTAINER=$OWNER/minimal-notebook
FROM $BASE_CONTAINER

RUN mamba install --quiet --yes \
    'altair'=4.1.0 \
    'beautifulsoup4'=4.10.0 \
    'pandas'=1.3.2