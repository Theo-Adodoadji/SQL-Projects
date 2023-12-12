CREATE DATABASE cardealership;
Use cardealership;


CREATE TABLE Dealerships(
	dealership_id int auto_increment not null primary key,
    fullname varchar(50) not null,
    address varchar(50) not null,
    phone varchar(12) not null
);


CREATE TABLE Vehicles(
	vin varchar(10) primary key,
    sold Bit, 
    make varchar(20),
    model varchar(20),
    color varchar(20)
);

CREATE TABLE Inventory(
	dealership_id int, 
    vin varchar(10),
    FOREIGN KEY (dealership_id) REFERENCES Dealerships(dealership_id),
    FOREIGN KEY (vin) REFERENCES Vehicles(vin),
    PRIMARY KEY (dealership_id, vin)
    
);

CREATE TABLE Sales_contracts(
	dealership_id int auto_increment,
    vin varchar(10),
	sale_date varchar(20),
    FOREIGN KEY (dealership_id) REFERENCES Dealerships(dealership_id),
	FOREIGN KEY (vin) REFERENCES Vehicles(vin)
   
);

-- Adding more entries to Dealerships table
INSERT INTO Dealerships (dealership_id, fullname, address, phone) 
VALUES (4, 'Auto Center', '567 Pine St', '111-222-3333'),
    (5, 'Hop Motors', '890 Cedar Ave', '444-555-6666'),
    (6, 'Hop Car Sales Industries', '901 Oakwood Blvd', '777-888-9999'),
    (7, 'Hopppp Dealership', '234 Maple Ln', '123-987-4567'),
    (8, 'Hoppie Auto Group', '345 Elm St', '987-654-3210'),
    (9, 'Hopsieeeee Motors', '678 Walnut Ave', '111-222-3333'),
    (10, 'Hop Hop Car Sales', '432 Birch Blvd', '444-555-6666'),
    (1, 'Hip Hop Auto CenVehiclester', '567 Oak Ave', '777-888-9999'),
    (2, 'Hopppppieeee Dealership', '789 Pine St', '123-987-4567'),
    (3, 'Hop Hop Scotch Auto Group', '890 Maple Ln', '987-654-3210');

-- Adding more entries to Vehicles table
INSERT INTO Vehicles (vin, sold, make, model, color) 
VALUES ('JKL012', 0, 'Toyota', 'RAV4', 'Silver'),
    ('MNO345', 1, 'Honda', 'Accord', 'White'),
    ('PQR678', 0, 'Ford', 'Escape', 'Gray'),
    ('STU901', 1, 'Chevrolet', 'Silverado', 'Red'),
    ('UVW234', 0, 'Nissan', 'Altima', 'Black'),
    ('EFG567', 1, 'BMW', 'X5', 'Blue'),
    ('RST890', 1, 'Audi', 'A4', 'Black'),
    ('IJK123', 0, 'Mercedes-Benz', 'C-Class', 'White'),
    ('LMN456', 1, 'Tesla', 'Model 3', 'Red'),
    ('NOP789', 0, 'Subaru', 'Outback', 'Green');

-- Adding more entries to Inventory table
INSERT INTO Inventory (dealership_id, vin) 
VALUES (4, 'JKL012'),
    (5, 'MNO345'),
    (6, 'PQR678'),
    (7, 'STU901'),
    (8, 'UVW234'),
    (9, 'EFG567'),
    (10, 'RST890'),
    (1, 'IJK123'),
    (2, 'LMN456'),
    (3, 'NOP789');

-- Adding more entries to Sales_contracts table
INSERT INTO Sales_contracts (dealership_id, vin, sale_date) 
VALUES (4, 'JKL012', '10-19-2023'),
    (5, 'PQR678', '03-17-2022'),
    (6, 'STU901', '05-14-2018'),
    (7, 'EFG567', '09-29-2016'),
    (8, 'RST890', '03-22-2019'),
    (9, 'LMN456', '04-22-2023'),
    (10, 'NOP789', '03-03-2015'),
    (1, 'MNO345', '08-19-2020'),
    (2, 'UVW234', '05-06-2013'),
    (3, 'IJK123', '06-21-2007');
    
    
