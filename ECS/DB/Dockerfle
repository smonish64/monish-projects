FROM python:3.10-slim
WORKDIR /ddb

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 7001

CMD ["python", "ddb.py"]
