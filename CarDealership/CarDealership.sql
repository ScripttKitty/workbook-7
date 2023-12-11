-- CREATE DATABASE CarDealership;
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

-- Populating tables
INSERT INTO dealerships (`name`, address, phone) 
VALUES
('Los Santos Custom', '000 Grove St', '555-5555'),
('Bennys Customs', '123 Annie Ave', '555-6666'),
('Rust Bros', '222 Maple St', '555-7777');

INSERT INTO vehicles (vin, make, color, `year`, price, sold) 
VALUES
(1, 'Toyota Camry', 'Blue', 2022, 25000.00, FALSE),
(2, 'Honda Accord', 'Red', 2021, 23000.00, TRUE),
(3, 'Ford Mustang', 'Black', 1969, 35000.00, FALSE);

INSERT INTO inventory (dealership_id, vin) 
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1);

INSERT INTO sales_contracts (vin, date, price)
VALUES
(2, '2023-01-15', 22000.00),
(3, '2023-02-20', 34000.00);
