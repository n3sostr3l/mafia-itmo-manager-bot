FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 
RUN pip install --no-cache-dir aiohttp-socks

COPY ./code ./code
COPY ./migration_add_passes_sent.sql ./migration_add_passes_sent.sql

CMD ["python", "code/run.py"]