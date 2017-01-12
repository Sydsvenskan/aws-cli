FROM python:3-alpine

ENV AWS_CLI_VERSION 1.11.36

ENV PAGER less

RUN apk add --no-cache groff && \
    pip --disable-pip-version-check install --no-cache-dir awscli==${AWS_CLI_VERSION}
