--liquibase formatted sql

--changeset dheerajk:create-table_customer_account
CREATE TABLE customer_account (
    id SERIAL PRIMARY KEY,
	firstname varchar(50),
	lastname varchar(50),
	username varchar(50),
	email varchar(150),
	country varchar(2),
	locale varchar(20),
	address varchar(500) 
);