FROM python:slim
ARG PACKAGE
WORKDIR /main
RUN \
    apt update && \
    apt install git -y && \
    pip install \
        mkdocs-material \
        mkdocs-redirects \
        mkdocstrings \
        mkdocstrings-python \
        mike
COPY ./${PACKAGE} /main/${PACKAGE}
COPY ./setup.py /main
COPY ./docs/mkdocs.yaml /main/docs/mkdocs.yaml
COPY ./docs/src /main/docs/src