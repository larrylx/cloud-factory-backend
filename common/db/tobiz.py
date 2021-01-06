from . import db


class Capacity(db.Model):
    """
    产能数据
    """
    __tablename__ = 'capacity'

    name = db.Column(db.Integer, supports_json=True, primary_key=True, comment='月份编号')
    month = db.Column(db.String, supports_json=True, nullable=False, comment='月份中文')
    availability = db.Column(db.Float, supports_json=True, nullable=False, comment='可用产能')
    occupation = db.Column(db.Float, supports_json=True, nullable=False, comment='已占产能')
