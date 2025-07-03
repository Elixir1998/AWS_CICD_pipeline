import os
import sys
sys.path.append(os.path.dirname(os.path.dirname(__file__)))

import app


def test_greet_user_with_params():
    with app.app.test_client() as client:
        response = client.get('/user?name=Alice&email=alice@example.com')
        assert response.status_code == 200
        assert response.data.decode() == 'Hello, Alice! Your email is alice@example.com.'


def test_greet_user_missing_params():
    with app.app.test_client() as client:
        response = client.get('/user?name=Alice')
        assert response.status_code == 200
        assert response.data.decode() == 'Please provide both name and email parameters.'

