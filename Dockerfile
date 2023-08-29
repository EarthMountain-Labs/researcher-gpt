# Use an official Python runtime as a base image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install required packages
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80


# Run the application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8081"]
