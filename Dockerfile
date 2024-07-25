FROM python:3.12.4

# install psycopg2 dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    gcc
    #postgresql-server-dev-14

# set work directory
WORKDIR /app

# install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# copy project
COPY . /app/

# set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1