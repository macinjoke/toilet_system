from toilet_system.config import config
from toilet_system.flask_main import app

if __name__ == "__main__":
    app.run(host=config['host'])
