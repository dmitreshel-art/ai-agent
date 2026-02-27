FROM python:3.11-slim

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY src/ ./src/
COPY config/ ./config/

# Create directories
RUN mkdir -p /app/data /app/memory /app/logs

# Expose port
EXPOSE 8000

# Default command (placeholder)
CMD ["python", "-c", "print('AI Agent starting...')"]
