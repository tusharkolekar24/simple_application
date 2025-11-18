# Base imagedocker
FROM python:latest

# Set working directory
WORKDIR /app

# Copy project files into container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port (use 8080 for SageMaker or 5000 for Flask)
EXPOSE 5000

CMD ["python", "app.py"]