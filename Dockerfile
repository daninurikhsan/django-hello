# Python runtime as a parent image
FROM python:3.12-slim

# Set env variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Working Directory
WORKDIR /app

# Install Depedencies
COPY requirements.txt /app/
RUN pip install -r requirements.txt

# Copy project code into the container
COPY . / /app/