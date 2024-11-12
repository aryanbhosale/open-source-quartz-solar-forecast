# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the project files to the container
COPY . /app

# Install the project and its dependencies
RUN pip install .

# Expose port 8000 to the outside world
EXPOSE 8000

# Run the application using python main.py
CMD ["python", "api/main.py"]
