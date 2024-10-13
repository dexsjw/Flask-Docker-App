FROM python:3.13-alpine3.19
WORKDIR /app
COPY . /app/
RUN pip install --no-cache-dir -r requirements.txt
