from flask import Blueprint
from flask_restful import Api

from . import capacity


capacity_bp = Blueprint('capacity', __name__, url_prefix='/capacity')
capacity_api = Api(capacity_bp, catch_all_404s=True)
capacity_api.representation('application/json')

capacity_api.add_resource(capacity.GetCapacity, '/', endpoint='Capacity_statistic')
