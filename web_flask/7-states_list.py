#!/usr/bin/python3
"""Flask web app that fetches data from storage engine"""
from flask import Flask, render_template
from models import storage

app = Flask(__name__)


@app.teardown_appcontext
def teardown_db(exception):
    """Closes the database at the end of the request."""
    storage.close()


@app.route('/cities_by_states', strict_slashes=False)
def cities_by_states():
    """Displays a HTML page listing states and cities."""
    states = storage.all("State").values()
    states_sorted = sorted(states, key=lambda state: state.name)

    return render_template('7-states_list.html', states=states_sorted)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
