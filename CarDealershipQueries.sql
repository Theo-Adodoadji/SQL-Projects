USE cardealership;

#1 Get all dealerships
SELECT * 
FROM Dealerships;

#2 Find all vehicles for a specific dealership
SELECT V.* 
FROM Vehicles V
JOIN Inventory I ON V.vin = I.vin
WHERE I.dealership_id = 8;

#3 Find a car by VIN
SELECT * 
FROM Vehicles
WHERE vin = 'UVW234';

#4 Find the dealership where a car is located by Vin
SELECT D.*
FROM Dealerships D
JOIN Inventory I ON D.dealership_id = I.dealership_id
WHERE I.vin = 'YUVW234';

#5 Find all dealerships that have a certain car type
SELECT DISTINCT D.*
FROM Dealerships D
JOIN Inventory I ON D.dealership_id = I.dealership_id
JOIN Vehicles V ON I.vin = V.vin
WHERE V.make = 'Toyota';

#6 Get all sales information for a specific dealer for a specific date range
SELECT *
FROM Sales
WHERE dealership_id = 4 AND sale_date BETWEEN '06-23-2011' AND '12-06-2023'; 