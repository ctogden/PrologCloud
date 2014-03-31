from flask import Flask, render_template
from py4j.java_gateway import JavaGateway

app = Flask(__name__)
app.debug = True

@app.route("/")
def index():
    return render_template('index.html', message="Hello World")

@app.route("/test_xsb")
def test_xsb():
    gateway = JavaGateway()
    call_prolog = gateway.entry_point
    arr = call_prolog.dynamicResultsFromProlog("nonDeterministicGoal(X,grandfather(abraham,X),ListModel)")
    return arr[0]
