FROM python:3.11-slim

RUN apt-get update && apt-get install -y \
    build-essential \
    libproj-dev \
    proj-data \
    proj-bin \
    libgeos-dev \
    libnetcdf-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .
# Download and install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the working
COPY . .

# Set the command to run the data ingestion script when the container star
CMD ["python", "data_ingestion.py"]