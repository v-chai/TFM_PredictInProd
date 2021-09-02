FROM python:3.8.6-buster

COPY model.joblib /model.joblib
COPY TaxiFareModel /TaxiFareModel
COPY api /api
COPY requirements.txt /requirements.txt
COPY /Users/vprentice/code/v-chai/gcp/wagon-bootcamp-319617-c64099509bde.json /credentials.json

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn api.fast:app --host 0.0.0.0 --port $PORT
