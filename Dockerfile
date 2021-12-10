ARG OWNER=jupyter
ARG BASE_CONTAINER=$OWNER/minimal-notebook
FROM $BASE_CONTAINER

RUN mamba install --quiet --yes \
    'altair'=4.1.0 \
    'beautifulsoup4'=4.10.0 \
    'pandas'=1.3.2

RUN pip install \
	"mglearn==0.1.9" \
	"psutil==5.8.0" \
	"selenium==3.141.0" \
	"dataframe-image==0.1.1" \
	"jupyter-book==0.12.1"