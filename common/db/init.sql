CREATE TABLE `product` (
    `product_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品编号',
    `delivery_date` date NOT NULL COMMENT '预计交货日期',
    `available_quantity` int(6) NOT NULL COMMENT '可订购数量',
    `price` float(6,2) NOT NULL COMMENT '价格',
    `production_line_id` bigint(20) NOT NULL COMMENT '生产线编号',
    PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='产品信息表';

CREATE TABLE `production_line` (
    `production_line_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '生产线编号',
    `factory_id` bigint(20) NOT NULL COMMENT '工厂编号',
    `common_products` varchar(200)  COMMENT '产线一般生产的产品',
    `ratting` float(2,1) COMMENT '生产线评价',
    `production_line_manager_id` bigint(20) NOT NULL COMMENT '生产线负责人ID',
    PRIMARY KEY (`production_line_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生产线信息表';

CREATE TABLE `factory` (
    `factory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '工厂编号',
    `factory_address` varchar(200) NOT NULL COMMENT '工厂地址',
    `factory_manager_id` bigint(20) NOT NULL COMMENT '工厂负责人ID',
    PRIMARY KEY (`factory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工厂信息表';

CREATE TABLE `user` (
    `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
    `name` varchar(20) NOT NULL COMMENT '姓名',
    `mobile` char(11) NOT NULL COMMENT '手机号',
    `email` varchar(30) COMMENT '邮箱',
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

ALTER TABLE production_line CHANGE common_products product_1 varchar(20) COMMENT '产品类别1';
ALTER TABLE production_line ADD COLUMN product_2 varchar(20) COMMENT '产品类别2';
ALTER TABLE production_line ADD COLUMN product_3 varchar(20) COMMENT '产品类别3';

ALTER TABLE product ADD COLUMN description varchar(200) NOT NULL COMMENT '产品描述';

ALTER TABLE production_line ADD COLUMN production_line_name varchar(40) NOT NULL COMMENT '生产线名称';

ALTER TABLE product ADD COLUMN production_line_name varchar(40) NOT NULL COMMENT '生产线名称';

ALTER TABLE product ADD COLUMN category varchar(20) NOT NULL COMMENT '类别';

ALTER TABLE product ADD COLUMN last_order_date date NOT NULL COMMENT '最迟下单日期';

CREATE TABLE `capacity` (
  `name` int(11) NOT NULL,
  `month` varchar(9) NOT NULL,
  `availability` float NOT NULL,
  `occupation` float NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8

ALTER TABLE capacity CHANGE name int(2);