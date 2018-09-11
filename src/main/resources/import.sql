delete from product_attribute;
delete from cart_product;
delete from product;
delete from attr_list;
delete from attribute;
delete from category;

delete from orders;
delete from cart;



-- category
insert into category (id, name) values (1,'�����');
insert into category (id, name) values (2,'������');
insert into category (id, name) values (3,'�������');

-- attribute
insert into attribute (id, name, type, category_id) values (1,'�����','N',1);
insert into attribute (id, name, type, category_id) values (2,'������','N',1);
insert into attribute (id, name, type, category_id) values (3,'������','N',1);
insert into attribute (id, name, type, category_id) values (4,'��������','S',1);

insert into attribute (id, name, type, category_id) values (5,'������','N',2);
insert into attribute (id, name, type, category_id) values (6,'������','S',2);

insert into attribute (id, name, type, category_id) values (7,'�����','N',3);
insert into attribute (id, name, type, category_id) values (8,'������','N',3);
insert into attribute (id, name, type, category_id) values (9,'���','S',3);

-- attr_list
insert into attr_list (id, attribute_id, value) values (1,4,'������');
insert into attr_list (id, attribute_id, value) values (2,4,'�������');
insert into attr_list (id, attribute_id, value) values (3,4,'������');

insert into attr_list (id, attribute_id, value) values (4,6,'�������');
insert into attr_list (id, attribute_id, value) values (5,6,'������');
insert into attr_list (id, attribute_id, value) values (6,6,'��� ������');

insert into attr_list (id, attribute_id, value) values (7,9,'1-��������');
insert into attr_list (id, attribute_id, value) values (8,9,'1,5-��������');
insert into attr_list (id, attribute_id, value) values (9,9,'2-��������');


-- product
insert into product (id,name,price,quantity,status,category_id) values (1,'���� ���������',3000,100,0,1);
insert into product (id,name,price,quantity,status,category_id) values (2,'���� ������',1000,200,1,1);
insert into product (id,name,price,quantity,status,category_id) values (3,'���� ����������',3500,0,2,1);

insert into product (id,name,price,quantity,status,category_id) values (4,'���� ''�������''',1500,10,0,2);
insert into product (id,name,price,quantity,status,category_id) values (5,'���������',800,100,0,2);

insert into product (id,name,price,quantity,status,category_id) values (6,'������� �������',6000,20,1,3);
insert into product (id,name,price,quantity,status,category_id) values (7,'������� �������',9000,15,0,3);

-- product_attribute
-- ���� ���������
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (1,1,1,150,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (2,1,2,100,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (3,1,3,70,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (4,1,4,-1,'������');
-- ���� ������
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (5,2,1,100,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (6,2,2,100,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (7,2,3,70,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (8,2,4,-1,'�������');
-- ���� �������
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (9,4,5,50,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (10,4,6,-1,'������');
-- ���������
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (11,5,5,50,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (12,5,6,-1,'��� ������');
-- ������� �������
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (13,6,7,150,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (14,6,8,70,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (15,6,9,-1,'������������');
-- ������� �������
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (16,7,7,200,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (17,7,8,150,'');
insert into product_attribute (id,product_id,attribute_id,value_n,value_s) values (18,7,9,-1,'�����������');

commit
