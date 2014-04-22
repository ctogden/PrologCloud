from flask import Flask, render_template, request, jsonify
from py4j.java_gateway import JavaGateway

app = Flask(__name__)
app.debug = True  # TODO turn off for production

@app.route("/")
def index():
    return render_template('index.html')

@app.route("/_xsb", methods=['GET', 'POST'])
def xsb():
    if(request.form):
	print "from post"
        goal = request.form.get('goal')
    else:
        print "default"
        goal = "grandfather(abraham,X)"

    gateway = JavaGateway()
    call_prolog = gateway.entry_point
    results = call_prolog.dynamicResultsFromProlog("nonDeterministicGoal(X, {} ,ListModel)".format(goal))
    return jsonify(prolog_results=[prolog_result for prolog_result in list(results)])
