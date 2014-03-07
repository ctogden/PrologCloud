from flask import Flask, render_template
from py4j.java_gateway import JavaGateway

app = Flask(__name__)

@app.route("/")
def index():
    return render_template('index.html', message="Hello World")
