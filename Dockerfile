FROM $com.sap.sles.base

RUN python3.6 -m pip install numpy --user
RUN python3.6 -m pip install pandas==0.24.0 --user
RUN pip3.6 install --user sklearn
RUN pip3.6 install --user joblib
RUN pip3.6 install --user matplotlib
RUN pip3.6 install --user label_encoder
