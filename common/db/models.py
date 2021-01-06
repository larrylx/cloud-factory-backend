# coding: utf-8
from sqlalchemy import CHAR, Column, Date, Float, String
from sqlalchemy.dialects.mysql import BIGINT, INTEGER
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()
metadata = Base.metadata


class Factory(Base):
    __tablename__ = 'factory'
    __table_args__ = {'comment': '?????'}

    factory_id = Column(BIGINT(20), primary_key=True, comment='????')
    factory_address = Column(String(200), nullable=False, comment='????')
    factory_manager_id = Column(BIGINT(20), nullable=False, comment='?????ID')


class Product(Base):
    __tablename__ = 'product'
    __table_args__ = {'comment': '?????'}

    product_id = Column(BIGINT(20), primary_key=True, comment='????')
    delivery_date = Column(Date, nullable=False, comment='??????')
    available_quantity = Column(INTEGER(6), nullable=False, comment='?????')
    price = Column(Float(6), nullable=False, comment='??')
    production_line_id = Column(BIGINT(20), nullable=False, comment='?????')
    description = Column(String(200), nullable=False, comment='????')
    production_line_name = Column(String(40), nullable=False, comment='?????')


class ProductionLine(Base):
    __tablename__ = 'production_line'
    __table_args__ = {'comment': '??????'}

    production_line_id = Column(BIGINT(20), primary_key=True, comment='?????')
    factory_id = Column(BIGINT(20), nullable=False, comment='????')
    product_1 = Column(String(20), comment='????1')
    ratting = Column(Float(2), comment='?????')
    production_line_manager_id = Column(BIGINT(20), nullable=False, comment='??????ID')
    product_2 = Column(String(20), comment='????2')
    product_3 = Column(String(20), comment='????3')
    production_line_name = Column(String(40), nullable=False, comment='?????')


class User(Base):
    __tablename__ = 'user'
    __table_args__ = {'comment': '?????'}

    user_id = Column(BIGINT(20), primary_key=True, comment='????')
    name = Column(String(20), nullable=False, comment='??')
    mobile = Column(CHAR(11), nullable=False, comment='???')
    email = Column(String(30), comment='??')
