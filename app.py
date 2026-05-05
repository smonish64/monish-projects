##  install python and create app.py file

from flask import Flask
import mysql.connector

app = Flask(__name__)

@app.route('/')
def home():
    try:

        conn = mysql.connector.connect(
            host="192.168.0.165",
            user="User",
            password="User1234#",
            database="testdb"
        )
        cursor = conn.cursor()
        cursor.execute("SELECT message FROM messages LIMIT 1;")
        result = cursor.fetchone()
        return f"Message from DB: {result[0]}"
    except Exception as e:
        return f"Error: {str(e)}"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
