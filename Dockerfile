FROM python:3.10-alpine

COPY . /src

WORKDIR /src

RUN pip install --no-cache-dir -r requirements.txt

RUN apk add wget

EXPOSE 8080

ENTRYPOINT ["sh", "bash.sh" ]