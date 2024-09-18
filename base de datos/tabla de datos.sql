CREATE DATABASE Estetica;

USE estetica;

CREATE TABLE roles (
	id_rol int,
    name_rol varchar(255),
    PRIMARY KEY (id_rol)
);
	
CREATE TABLE user(
	id_user int not null auto_increment,
	name_user varchar (255),
	Email varchar (100),
	password varchar (20),
	id_rol int,
	phone_number int (10),
	address varchar (30),
	profile_photo varchar(400),
    PRIMARY KEY (id_user),
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

CREATE TABLE products(
	id_product int not null auto_increment,
	name_product varchar (40),
	description varchar (255),
	price float,
	category varchar (20),
	photo_product varchar (400),
	PRIMARY KEY (id_product)
);

CREATE TABLE storage (
	id_storage int not null auto_increment, 
	id_product int,
	amount int,
	uptade_date date, 
	price float,
	primary key (id_storage)
);

CREATE TABLE appointment(
	id_appointment	int,
	id_employee	int,
	id_client int,
	date_appointment	date,
	id_status enum('Agendar','Cancelar','Postergar'),
    primary key (id_appointment),
    foreign key (id_employee) references user(id_user),
    foreign key (id_client) references user(id_user)
);

CREATE TABLE product_appointment(
	id_appointment int,
	id_product int,
	amount int,
    price_sale float, 
    foreign key (id_appointment) references appointment(id_appointment),
    foreign key (id_product) references products(id_product)
);

CREATE TABLE rating(
	id_rating	int,
	id_product	int,
	id_user	int,
	rating_value	int,
	comment	varchar(300),
	rating_date	date,
    primary key (id_rating),
    foreign key (id_product) references products(id_product),
    foreign key (id_user) references user(id_user)
);

CREATE TABLE purchase(
	id_purchase	int,
	id_user	int,
	purchase_date	date,
	total_paid	float,
    primary key (id_purchase),
    foreign key (id_user) references user(id_user)
);

CREATE TABLE Purchase_details(
	id_purchase	int,
	id_product int,
	amount int,
	foreign key (id_purchase) references purchase(id_purchase),
    foreign key (id_product) references products(id_product)
);

CREATE TABLE Notifications(
	id_notification	int,
	message	varchar (500),
	read_status enum('F', 'T'),
	notification_date date,
    primary key (id_notification)
);

CREATE TABLE frequently_questions(
	id_question	int,
	question	varchar (500),
	answer	varchar (500),
	status	enum ('respondida','por responder'),
    primary key (id_question)
);

alter table storage add foreign key (id_product) references products(id_product);
alter table product_appointment add column price_sale float;

ALTER TABLE notifications drop column id_user;
ALTER TABLE notifications drop foreign key id_user;

alter table products add column rating float, add column average float;

alter table purchase_details MODIFY category varchar (100);

alter table purchase_details add foreign key (category) REFERENCES products(category);

select * from product_appointment;*/


