FROM python:latest

RUN pip3 install git+https://github.com/DennisMitchell/jellylanguage.git;


RUN set -ex; \
    useradd -m codewarrior; \
    mkdir /workspace; \
    chown -R codewarrior: /workspace;
WORKDIR /workspace


USER codewarrior
