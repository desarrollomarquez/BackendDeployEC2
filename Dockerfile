#FROM python:3.7.11-slim-stretch
FROM python:latest

RUN apt-get update; apt-get install -y gunicorn
COPY requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -r /requirements.txt
COPY . /app
WORKDIR /app/
ENV PYTHONPATH=/app
EXPOSE 5000
ENTRYPOINT ["gunicorn","run:app","-b","0.0.0.0:5000"]
