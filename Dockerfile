#use the official Python image
FROM python:3

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .

# Install dependencies from requirements.txt (if available)
RUN pip install -r requirements.txt

# Run Django migrations (only when container is run, not at build time)
EXPOSE 8000

# Run the Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

