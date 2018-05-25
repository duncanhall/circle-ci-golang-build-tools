FROM circleci/golang:1.10

USER root
RUN apt-get update && apt-get install -y python-pip libpython-dev

USER circleci
RUN pip install awscli --upgrade --user

ENV PATH="~/.local/bin:${PATH}"
