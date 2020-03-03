FROM python:3.8-alpine

WORKDIR /app
RUN apk add --update --no-cache build-base libffi-dev openssl-dev

COPY README.md setup.py ./
COPY frundenbot frundenbot
RUN pip install .

USER nobody
CMD ["frundenbot"]
