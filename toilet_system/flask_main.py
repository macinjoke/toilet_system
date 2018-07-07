from flask import Flask, request
from sqlalchemy import create_engine

app = Flask(__name__)

import logging
app.logger.setLevel(logging.DEBUG)
debug = app.logger.debug

engine = create_engine('mysql+pymysql://root:root@mysql/mydb?charset=utf8')


@app.route("/")
def hello():
    x = request.args.get('x')
    y = request.args.get('y')
    debug(f"x, y: {x}, {y}")
    result = engine.execute(f"select name, (x - {x}) * (x - {x}) + (y - {y}) * (y - {y}) as distance from toilets order by distance;")
    result_str = ""
    for row in result:
        debug(row)
        result_str += str(row)

    return str(result_str)
