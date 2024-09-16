#step 1: Use an official Python runtime as a parent image
FROM python:3.9-slim

# Step 2: Set the working directory in the container
WORKDIR /usr/src/app

# Step 3: Copy the requirements.txt file into the container
COPY requirements.txt ./

# Step 4: Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the current directory contents into the container
COPY . .

# Step 6: Expose port 8000 for Django development server
EXPOSE 8000

# Step 7: Run Django migrations and start the development server
CMD ["python", "manage.py", "migrate"]
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

