
FROM python:3.10

WORKDIR /app

COPY backend /app

RUN pip install flask requests TTS

EXPOSE 5000

CMD ["python", "app.py"]
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy backend folder contents into container
COPY backend/ /app/

# Install Python dependencies
RUN pip install --upgrade pip && \
    pip install flask requests TTS

# Create folders for media
RUN mkdir -p videos music

# Expose Flask port
EXPOSE 5000

# Start the Flask server
CMD ["python", "app.py"]
