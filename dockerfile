FROM alpine:latest

RUN apk add --no-cache python3

WORKDIR /home/hello

COPY hello.py .
COPY requirements.txt .

RUN python3 -m venv venv && \
  ./venv/bin/pip install -r requirements.txt

CMD ["./venv/bin/python", "hello.py"]
