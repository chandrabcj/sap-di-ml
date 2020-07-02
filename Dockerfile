# Use an official Python 3.6 image as a parent image
FROM python:3.6.4-slim-stretch
# Install python library "tornado" (Only required with SAP Data Hub version >= 2.5)
RUN pip install --user tornado==5.0.2

RUN pip install numpy --user
RUN pip install pandas==0.24.0 --user
RUN pip install --user sklearn
RUN pip install --user joblib
RUN pip install --user matplotlib
RUN pip install --user label_encoder
