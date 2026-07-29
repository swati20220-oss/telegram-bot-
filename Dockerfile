FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Prevent Python from writing pyc files and buffering stdout/stderr
ENV PYTHONUNBUFFERED=1

# Copy files
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Hugging Face Spaces port exposure
EXPOSE 7860

# Run application
CMD ["python", "app.py"]
