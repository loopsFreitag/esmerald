FROM python:3.10-alpine

COPY app /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["sh", "bash.sh" ]