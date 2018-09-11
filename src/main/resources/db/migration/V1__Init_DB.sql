create sequence hibernate_sequence start 1 increment 1;
create table attr_list (
	 id int8 not null,
	 value varchar(255),
	 attribute_id int8,
	 primary key (id)
);
create table attribute (
	 id int8 not null,
	 name varchar(255),
	 type char(1) not null,
	 category_id int8 not null,
	 primary key (id)
);
create table cart (
	 id int8 not null,
	 client_id int8 not null,
	 primary key (id)
);
create table cart_product (
	 cart_id int8 not null,
	 product_id int8 not null,
	 primary key (cart_id,
	 product_id)
);
create table category (
	 id int8 not null,
	 name varchar(255),
	 primary key (id)
);
create table client (
	 id int8 not null,
	 active boolean not null,
	 address varchar(255),
	 email varchar(255),
	 first_name varchar(255),
	 password varchar(255) not null,
	 patronymic varchar(255),
	 surname varchar(255),
	 username varchar(255) not null,
	 primary key (id)
);
create table orders (
	 id int8 not null,
	 address varchar(255),
	 delivery_status int4,
	 email varchar(255),
	 fio varchar(255),
	 order_status int4,
	 summa float8,
	 cart_id int8 not null,
	 primary key (id)
);
create table product (
	 id int8 not null,
	 name varchar(255),
	 price float8,
	 quantity int4,
	 status int4,
	 category_id int8 not null,
	 primary key (id)
);
create table product_attribute (
	 id int8 not null,
	 value_n float8,
	 value_s varchar(255),
	 attribute_id int8,
	 product_id int8,
	 primary key (id)
);
create table user_role (
	user_id int8 not null,
	 roles varchar(255)
);
alter table orders
	add constraint orders_cart_uk 
	unique (cart_id);
alter table attr_list 
	add constraint attr_list_attribute_fk 
	foreign key (attribute_id) references attribute;
alter table attribute 
	add constraint attribute_category_fk 
	foreign key (category_id) references category;
alter table cart 
	add constraint cart_client_fk 
	foreign key (client_id) references client;
alter table cart_product 
	add constraint cart_product_product_fk 
	foreign key (product_id) references product;
alter table cart_product 
	add constraint cart_product_cart_fk 
	foreign key (cart_id) references cart;
alter table orders 
	add constraint orders_cart_fr 
	foreign key (cart_id) references cart;
alter table product 
	add constraint product_category_fk 
	foreign key (category_id) references category;
alter table product_attribute 
	add constraint product_attribute_attribute_fk 
	foreign key (attribute_id) references attribute;
alter table product_attribute 
	add constraint product_attribute_product_fk 
	foreign key (product_id) references product;
alter table user_role 
	add constraint user_role_clients_fk 
	foreign key (user_id) references client;
