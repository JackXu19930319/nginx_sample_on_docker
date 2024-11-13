import os

from flask import Flask

work_port = int(os.environ.get("APP2_PORT", '8001'))

app = Flask(__name__)


@app.route('/')
def index():
    return f'Hello, World {work_port}!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=work_port)
