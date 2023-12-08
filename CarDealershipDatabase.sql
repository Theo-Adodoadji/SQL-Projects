CREATE DATABASE cardealership;

CREATE TABLE `Dealerships`(
	`dealership_id` int auto_increment not null primary key,
    `name` varchar(50) not null,
    `address` varchar(50) not null,
    `phone` varchar(12) not null
);
Drop TABLE `Dealerships`;
Use cardealership;

CREATE TABLE `Vehicles`(
	`vin` varchar(10) unique primary key,
    `sold` boolean, 
    `make` varchar(20),
    `model` varchar(20),
    `color` varchar(20)
);

CREATE TABLE `Inventory`(
	`dealership_id` int, 
    `vin` varchar(10) unique
);

CREATE TABLE `sales_contracts`(
	`dealership_id` int auto_increment not null,
	FOREIGN KEY (vin) REFERENCES vehicle(vin)
	
);
