from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to ArgoCD learning V1.6\n"
