import os
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello, Flask is running!"

if __name__ == '__main__':
    app.run(
        debug=os.getenv('FLASK_DEBUG', 'True') == 'True',
        host=os.getenv('FLASK_HOST', '0.0.0.0'),
        port=int(os.getenv('FLASK_PORT', '5001'))
    )