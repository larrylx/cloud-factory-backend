from flask import Flask

from products import product_bp
from capacity import capacity_bp
from common.db import db


def create_flask_app(config, enable_config_file=False, env_config_file='file_name'):
    app = Flask(__name__)
    app.config.from_object(config)

    if enable_config_file:
        app.config.from_envvar(env_config_file, silent=False)

    # Register Product Blueprint
    app.register_blueprint(product_bp)

    # Register Capacity Blueprint
    app.register_blueprint(capacity_bp)

    # init database
    db.init_app(app)

    return app
