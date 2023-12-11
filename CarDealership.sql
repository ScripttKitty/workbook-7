CREATE DATABASE CarDealership;
USE CarDealership;

CREATE TABLE dealerships (
	dealership_id INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(50),
    address VARCHAR(50),
    phone VARCHAR(12),
    Primary Key(dealership_id)
);

CREATE TABLE vehicles (
	vin INT NOT NULL,
    make VARCHAR(50),
    color VARCHAR(50),
	`year` INT NOT NULL,
    price DOUBLE NOT NULL,
    sold BOOLEAN NOT NULL,
	primary key(vin)
);

CREATE TABLE inventory(
	inventory_id INT NOT NULL auto_increment,
	dealership_id INT NOT NULL,
    vin INT NOT NULL,
    primary key(inventory_id),
    foreign key (dealership_id) references dealerships(dealership_id),
    foreign key(vin) references vehicles(vin)
);

CREATE TABLE sales_contracts(
	contract_id INT NOT NULL auto_increment,
    vin INT NOT NULL,
    date DATE,
    price DOUBLE NOT NULL,
    Primary Key (contract_id),
    Foreign Key(vin) REFERENCES vehicles(vin)
);

