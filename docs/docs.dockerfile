FROM python:slim
ARG PACKAGE
WORKDIR /main
RUN pip install mkdocs-material mkdocs-redirects mkdocstrings mkdocstrings-python
COPY ./${PACKAGE} /main/${PACKAGE}
COPY ./setup.py /main
COPY ./docs /main/docs