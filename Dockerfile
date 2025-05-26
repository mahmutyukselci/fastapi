FROM python:3.11-slim

# Sistemde gerekli paketleri kur
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Çalışma dizini
WORKDIR /app

# Gereksinimleri yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Scriptleri kopyala
COPY start.sh .
RUN chmod +x start.sh

# Start komutu
CMD ["./start.sh"]
