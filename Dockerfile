FROM python:alpine3.15

WORKDIR /src

RUN apk add build-base

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY ./scripts ./scripts
COPY ./runner.sh .

ENTRYPOINT ["./runner.sh"]