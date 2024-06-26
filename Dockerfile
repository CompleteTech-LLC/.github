# Use the official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory within the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that FastAPI runs on
EXPOSE 8000

# Command to run the FastAPI application within the container
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
