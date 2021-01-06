from flask_restful import Resource
from json import loads
# from sqlalchemy.orm import load_only

from common.db.general import Product


class Items(Resource):

    def get(self):
        items = Product.query.all()
        # .options(load_only(Product.delivery_date, Product.available_quantity, Product.price, Product.description,
        # Product.production_line_name)).first()
        # items_list = [row.to_json() for row in items]
        # print(items)
        items_list = []
        for i in items:
            items_list.append(loads(i.to_json()))
        # print(items_list)
        return items_list
