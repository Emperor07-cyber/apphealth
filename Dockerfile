FROM python:3.11-slim

# Install curl
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . .

RUN pip install flask

EXPOSE 8000

CMD ["python", "apphealth.py"]
