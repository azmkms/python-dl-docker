FROM python:slim-stretch

ARG UID=1001
ARG GID=1001

RUN pip --no-cache-dir install \
    numpy \
    scipy \
    pandas \
    matplotlib \
    seaborn \
    scikit-learn \
    statsmodels \
    https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.8.0-cp36-cp36m-linux_x86_64.whl \
    keras \
    jupyter 

WORKDIR /nbs

RUN groupadd -g $GID jovyan && \
    useradd -r -m -u $UID -g jovyan jovyan
USER jovyan

EXPOSE 8888

