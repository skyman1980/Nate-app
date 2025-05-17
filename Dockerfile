
FROM python:3.10

WORKDIR /app

COPY backend /app

RUN pip install flask requests TTS

EXPOSE 5000

CMD ["python", "app.py"]
