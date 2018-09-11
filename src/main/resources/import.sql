delete from product_attribute;
delete from cart_product;
delete from product;
delete from attr_list;
delete from attribute;
delete from category;

delete from orders;
delete from cart;



-- category
insert into category (id, name) values (1,'Столы');
insert into category (id, name) values (2,'Стулья');
insert into category (id, name) values (3,'Кровати');

-- attribute
insert into attribute (id, name, type, category_id) values (1,'Длина','N',1);
insert into attribute (id, name, type, category_id) values (2,'Ширина','N',1);
insert into attribute (id, name, type, category_id) values (3,'Высота','N',1);
insert into attribute (id, name, type, category_id) values (4,'Материал','S',1);

insert into attribute (id, name, type, category_id) values (5,'Высота','N',2);
insert into attribute (id, name, type, category_id) values (6,'Спинка','S',2);

insert into attribute (id, name, type, category_id) values (7,'Длина','N',3);
insert into attribute (id, name, type, category_id) values (8,'Ширина','N',3);
insert into attribute (id, name, type, category_id) values (9,'Тип','S',3);

-- attr_list
insert into attr_list (id, attribute_id, value) values (1,4,'Дерево');
insert into attr_list (id, attribute_id, value) values (2,4,'Пластик');
insert into attr_list (id, attribute_id, value) values (3,4,'Металл');

insert into attr_list (id, attribute_id, value) values (4,6,'Жесткая');
insert into attr_list (id, attribute_id, value) values (5,6,'Мягкая');
insert into attr_list (id, attribute_id, value) values (6,6,'Без спинки');

insert into attr_list (id, attribute_id, value) values (7,9,'1-спальная');
insert into attr_list (id, attribute_id, value) values (8,9,'1,5-спальная');
insert into attr_list (id, attribute_id, value) values (9,9,'2-спальная');


-- product
insert into product (id,name,price,quantity,status,category_id) values (1,'Стол обеденный',3000,100,0,1);
insert into product (id,name,price,quantity,status,category_id) values (2,'Стол дачный',1000,200,1,1);
insert into product (id,name,price,quantity,status,category_id) values (3,'Стол журнальный',3500,0,2,1);

insert into product (id,name,price,quantity,status,category_id) values (4,'Стул ''Комфорт''',1500,10,0,2);
insert into product (id,name,price,quantity,status,category_id) values (5,'Табуретка',800,100,0,2);

insert into product (id,name,price,quantity,status,category_id) values (6,'Кровать детская',6000,20,1,3);
insert into product (id,name,price,quantity,status,category_id) values (7,'Кровать большая',9000,15,0,3);

-- product_attribute
-- Стол обеденный
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (1,1,1,150,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (2,1,2,100,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (3,1,3,70,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (4,1,4,-1,'Дерево');
-- Стол дачный
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (5,2,1,100,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (6,2,2,100,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (7,2,3,70,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (8,2,4,-1,'Пластик');
-- Стул Кофморт
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (9,4,5,50,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (10,4,6,-1,'Мягкая');
-- Табуретка
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (11,5,5,50,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (12,5,6,-1,'Без спинки');
-- Кровать детская
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (13,6,7,150,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (14,6,8,70,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (15,6,9,-1,'Односпальная');
-- Кровать большая
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (16,7,7,200,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (17,7,8,150,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (18,7,9,-1,'Двуспальная');

commit
