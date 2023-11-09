from flask import Flask
from threading import Thread
import os
app = Flask(__name__)

@app.route("/")
def root():
    return "Hello from Space! 🚀"
def run():
    os.system("nohup python main1.py")
@app.route('/run')
def hello_world4d():
    t = Thread(target=run)
    t.start()
    return "RUN:D"
