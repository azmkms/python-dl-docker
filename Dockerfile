FROM python:slim-stretch

RUN pip --no-cache-dir install \
    https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-1.8.0-cp36-cp36m-linux_x86_64.whl \
    keras \
    jupyter \
    matplotlib

WORKDIR /nbs

EXPOSE 8888

