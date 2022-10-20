-- This SQL script builds a Peets4Knights database, deleting any pre-existing version.
--
-- @author mattvanharn
-- @version Fall, 2022


-- Drop previous versions of the tables if they exsts, in reverse order of the foreign keys.

DROP TABLE IF EXISTS CompletedOrders;
DROP TABLE IF EXISTS DrinkMenu;
DROP TABLE IF EXISTS FoodMenu; 
DROP TABLE IF EXISTS DrinkSpecifications; 
DROP TABLE IF EXISTS DrinkItem; 
DROP TABLE IF EXISTS FoodItem; 
DROP TABLE IF EXISTS SyrupPumps;

-- Create the schema.

CREATE TABLE CompletedOrders (
	ID SERIAL PRIMARY KEY,
	time timestamp,
	drinkID integer REFERENCES DrinkItem(ID),
	foodID integer REFERENCES FoodItem(ID),
	totalCost integer,
	pickupTime timestamp
);

CREATE TABLE DrinkMenu (
	ID SERIAL PRIMARY KEY,
	drinkName varchar(50),
	drinkURI varchar(50)
);

CREATE TABLE FoodMenu (
	ID SERIAL PRIMARY KEY,
	foodName varchar(50),
	foodURI varchar(50)
);

CREATE TABLE DrinkSpecifications (
	size integer,
	iced boolean,
	sugar varchar(15),
	whippedCream boolean,
	syrup varchar(20) REFERENCES Syrups(ID),
        decaf boolean	
);

CREATE TABLE DrinkItem (
	drinkID SERIAL PRIMARY KEY,
	drinkName varchar(50) REREFENCE DrinkMenu(ID),
	specifications array REFERENCE DrinkSpecifications(),
	cost money
);

CREATE TABLE FoodItem (
	foodID SERIAL PRIMARY KEY,
	foodName varchar(50) REFERENCE FoodMenu(ID),
	specifications array REFERENCE FoodSpecifications(),
	cost money
);

CREATE TABLE SyrupPumps (
	vanilla integer,
	caramel integer,
	pumpking integer,
	hazelnut integer
);

-- Allow users to select data from the tables.

GRANT SELECT ON CompletedOrder TO PUBLIC;
GRANT SELECT ON DrinkMenu TO PUBLIC;
GRANT SELECT ON FoodMenu TO PUBLIC;
GRANT SELECT ON DrinkSpecification TO PUBLIC;
GRANT SELECT ON	DrinkItem TO PUBLIC;
GRANT SELECT ON FoodItem TO PUBLIC;
GRANT SELECT ON SyrupPumps TO PUBLIC;

-- Add sample records.

INSERT INTO CompletedOrder VALUES;

INSERT INTO DrinkMenu VALUES;

INSERT INTO FoodMenu VALUES;

INSERT INTO DrinkSpecification VALUES;

INSERT INTO DrinkItem VALUES;

INSERT INTO FoodItem VALUES;

INSERT INTO SyrupPumps VALUES;
