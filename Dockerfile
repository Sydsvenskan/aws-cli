FROM python:3-alpine

ENV AWS_CLI_VERSION 1.11.36

# Explicitly specify PAGER as aws uses the -r option
# for less which isn't available on alpine.
ENV PAGER less

# Install the aws cli and its dependencies.
RUN apk add --no-cache groff && \
    pip --disable-pip-version-check install --no-cache-dir awscli==${AWS_CLI_VERSION}
