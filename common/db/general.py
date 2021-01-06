from . import db


class Product(db.Model):
    """
    产品
    """
    __tablename__ = 'product'

    product_id = db.Column(db.BigInteger, supports_json=True, primary_key=True, doc='产品编号')
    delivery_date = db.Column(db.Date, supports_json=True, nullable=False, doc='预计交货日期')
    available_quantity = db.Column(db.Integer, supports_json=True, nullable=False, doc='可订购数量')
    price = db.Column(db.Float, supports_json=True, nullable=False, doc='价格')
    production_line_id = db.Column(db.BigInteger, supports_json=True, nullable=False, doc='生产线编号')
    description = db.Column(db.String, supports_json=True, nullable=False, doc='产品描述')
    production_line_name = db.Column(db.String, supports_json=True, nullable=False, doc='生产线名称')
    category = db.Column(db.String, supports_json=True, nullable=False, doc='类别')
    last_order_date = db.Column(db.Date, supports_json =True, nullable=False, doc='最迟下单日期')


class ProductionLine(db.Model):
    """
    生产线
    """
    __tablename__ = 'production_line'

    production_line_id = db.Column(db.BigInteger, primary_key=True, comment='生产线编号')
    factory_id = db.Column(db.BigInteger, nullable=False, comment='工厂编号')
    product_1 = db.Column(db.String, comment='产品类别1')
    ratting = db.Column(db.Float, comment='生产线评价')
    production_line_manager_id = db.Column(db.BigInteger, nullable=False, comment='产线负责人ID')
    product_2 = db.Column(db.String, comment='产品类别2')
    product_3 = db.Column(db.String, comment='产品类别3')
    production_line_name = db.Column(db.String, nullable=False, comment='生产线名称')


class Factory(db.Model):
    """
    工厂
    """
    __tablename__ = 'factory'

    factory_id = db.Column(db.BigInteger, primary_key=True, comment='工厂编号')
    factory_address = db.Column(db.String, nullable=False, comment='工厂地址')
    factory_manager_id = db.Column(db.BigInteger, nullable=False, comment='工厂负责人ID')


class User(db.Model):
    """
    用户
    """
    __tablename__ = 'user'

    user_id = db.Column(db.BigInteger, primary_key=True, comment='用户编号')
    name = db.Column(db.String, nullable=False, comment='姓名')
    mobile = db.Column(db.String, nullable=False, comment='手机号')
    email = db.Column(db.String, comment='邮箱')
