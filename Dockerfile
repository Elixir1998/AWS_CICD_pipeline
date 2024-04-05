From python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container /app directory
COPY . /app

# install Flask
RUN pip install Flask

EXPOSE 5000

#run Flask app on container launch
CMD ["python", "app.py"]
