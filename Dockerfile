# Use the official Python image from Docker Hub
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the requirements.txt file
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run the application (modify as needed)
CMD ["python", "app.py"]
