# Start from the official Python 3.9 slim image (a lightweight Debian-based image)
FROM python:3.9-slim

# Set the working directory inside the container to /app
# All subsequent commands will be run from this directory
WORKDIR /app

# Copy requirements.txt from your host machine to the /app directory in the container
# This is done as a separate step to leverage Docker caching
COPY requirements.txt .

# Install all Python dependencies listed in requirements.txt
# This runs during the image build process
RUN pip install -r requirements.txt

# Copy the rest of your application code (app.py) to the container
# This happens after dependency installation for better caching
COPY app.py .

# Specify the command to run when the container starts
# This launches your Flask application using Python
CMD ["python", "app.py"]