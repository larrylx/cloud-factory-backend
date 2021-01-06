from flask import Blueprint
from flask_restful import Api

from . import products


product_bp = Blueprint('products', __name__, url_prefix='/products')
product_api = Api(product_bp, catch_all_404s=True)
product_api.representation('application/json')

product_api.add_resource(products.Items, '/', endpoint='Products_List')
