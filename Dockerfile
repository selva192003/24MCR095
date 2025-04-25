FROM python:3.12-slim

WORKDIR /app
RUN cd /app

COPY . .
RUN pip install pandas  matplotlib scikit-learn

CMD [ "python" , "hello_world_ml.py"]