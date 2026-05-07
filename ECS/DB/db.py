from flask import Flask

app = Flask(__name__)
@app.route("/")
@app.route("/docker/ddb")
def home():
    return "**DATABASE PAGE LOADED SUCCESSFULLY**"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=7001)
