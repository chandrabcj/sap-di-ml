# Use an official Python 3.6 image as a parent image
FROM python:3.6.4-slim-stretch

RUN groupadd -g 1972 cmddata && useradd -g 1972 -u 1972 -m cmddata
USER 1972:1972
WORKDIR "/home/cmddata"
ENV HOME=/home/cmddata
ENV PATH="${PATH}:${HOME}/.local/bin"

# Install python library "tornado" (Only required with SAP Data Hub version >= 2.5)
RUN pip install --user tornado==5.0.2
RUN pip install --user requests
RUN pip install --user numpy
RUN pip install --user pandas
RUN pip install --user sklearn
RUN pip install --user joblib
RUN pip install --user boto3
RUN pip install --user unidecode
RUN pip install --user nltk.tokenize
RUN pip install --user nltk
RUN pip install --user nltk.corpus
RUN pip install --user matplotlib
