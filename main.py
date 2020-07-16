import os

from flask import Flask, request, jsonify


app = Flask(__name__)


@app.route("/", methods=['GET', 'POST'])
def hello_world():
    data = request.get_json()
    return jsonify(data)
