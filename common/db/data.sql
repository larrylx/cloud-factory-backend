INSERT INTO user (user_id, name, mobile, email)
VALUES ('1340769173890015232', '张三', '18911111111', 'zhang3@larrylx.com'),
('1340769220685864960', '李四', '18922222222', 'li4@larrylx.com'),
('1340769246111735808', '王五', '18933333333', 'wang5@larrylx.com'),
('1340769268794531840', '赵六', '18944444444', 'zhao6@larrylx.com'),
('1340769295508054016', '孙七', '18955555555', 'sun7@larrylx.com')

INSERT INTO factory (factory_id, factory_address, factory_manager_id)
VALUES ('1340770549143576576', '成都1路', '1340769173890015232'),
('1340770598778970112', '成都2路', '1340769220685864960')

INSERT INTO production_line (production_line_id, factory_id, product_1, ratting, production_line_manager_id)
VALUES ('1340775947539980288', '1340770549143576576', '衬衣', 4.8, '1340769246111735808'),
('1340776270694326272', '1340770549143576576', '裤子', 4.7, '1340769246111735808'),
('1340776351896051712', '1340770549143576576', '大衣', 3.9, '1340769268794531840'),
('1340776944135970816', '1340770598778970112', '内衣', 4.0, '1340769295508054016'),
('1340776963740147712', '1340770598778970112', '短袖', 2.8, '1340769295508054016')

INSERT INTO product (product_id, delivery_date, available_quantity, price, production_line_id, description)
VALUES ('1340777633566302208', '2021-01-23', 480, 23.75, '1340775947539980288', '优质西装衬衣'),
('1340777661919797248', '2021-01-30', 300, 29.99, '1340776270694326272', '运动长裤-lolobanada'),
('1340777685160435712', '2021-03-15', 50, 87.15, '1340776351896051712', '枫叶鹅，保暖大衣，鹅毛'),
('1340777712113033216', '2021-02-27', 500, 20, '1340776944135970816', '纯棉内衣'),
('1340777734925852672', '2021-02-10', 100, 13.5, '1340776963740147712', '个性T-Shirt'),
('1340783502668472320', '2021-02-02', 350, 43.5, '1340775947539980288', '休闲衬衣'),
('1340783529323274240', '2021-04-18', 632, 28.53, '1340776270694326272', '北极人保暖内裤'),
('1340783558243000320', '2021-04-01', 1000, 167.88, '1340776351896051712', '加拿大鸭羽绒'),
('1340783582586740736', '2021-03-05', 500, 8.5, '1340776944135970816', '男装内裤'),
('1340783602580987904', '2021-01-15', 100, 57.12, '1340776963740147712', '足球服')

INSERT INTO product (product_id, delivery_date, available_quantity, price, production_line_id, description)
VALUES ('1340785519528910848', '2021-1-8', 780, 132.57, '1340776351896051712', '汤姆布朗外套')

INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('1', '一月', '40', '60');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('2', '二月', '64', '36');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('3', '三月', '80', '20');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('4', '四月', '30', '20');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('5', '五月', '55', '45');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('6', '六月', '65', '35');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('7', '七月', '79', '21');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('8', '八月', '82', '18');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('9', '九月', '100', '0');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('10', '十月', '100', '0');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('11', '十一月', '100', '0');
INSERT INTO `cloudfactory`.`capacity` (`name`, `month`, `availability`, `occupation`) VALUES ('12', '十二月', '100', '0');