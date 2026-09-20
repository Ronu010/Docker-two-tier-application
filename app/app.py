from flask import Flask
import mysql.connector

app = Flask(__name__)

@app.route("/")
def home():
    return "Docker Two Tier Application Running"

@app.route("/db")
def database():
    connection = mysql.connector.connect(
        host="db",
        user="root",
        password="password",
        database="testdb"
    )

    return "Database Connected Successfully"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)