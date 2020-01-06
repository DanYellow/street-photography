FROM python:3.7

COPY ./flask-app/ /app
COPY ./flask-app/app.py /app


WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

RUN ls

ENTRYPOINT python app.py
