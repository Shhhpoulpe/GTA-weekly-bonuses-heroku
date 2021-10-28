FROM tiangolo/uvicorn-gunicorn:python3.9-slim

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install -y \
    vim \
    python3 \
    python3-pip
RUN pip3 install -r requirements.txt

EXPOSE $PORT

CMD uvicorn main:app --host 0.0.0.0 --port $PORT