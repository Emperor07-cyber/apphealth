FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir flask pytest

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost:8000/health || exit 1

CMD ["python", "apphealth.py"]
