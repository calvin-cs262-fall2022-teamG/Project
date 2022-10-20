-- This SQL script builds a Peets4Knights database, deleting any pre-existing version.
--
-- @author mattvanharn
-- @version Fall, 2022


-- Drop previous versions of the tables if they exsts, in reverse order of the foreign keys.

DROP TABLE IF EXISTS CompletedOrder;
DROP TABLE IF EXISTS DrinkMenu;
DROP TABLE IF EXISTS FoodMenu; 
DROP TABLE IF EXISTS DrinkSpecifications; 
DROP TABLE IF EXISTS DrinkItem; 
DROP TABLE IF EXISTS FoodItem; 
DROP TABLE IF EXISTS MilkPrep;
DROP TABLE IF EXISTS SyrupAndSauceOptions;
DROP TABLE IF EXISTS ShotOptions;
DROP TABLE IF EXISTS Toppings;

-- Create the schema.

CREATE TABLE CompletedOrder (
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
	milk array REFERENCE MilkPrep(),
	shot array REFERENCE ShotOption(),
	syrupAndSauce integer REFERENCE SyrupAndSauceOptions(),
	toppings array REFERENCE Toppings(),
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

CREATE TABLE MilkPrep (
	milkType varchar(15),
	foam varchar(10),
	milkTemp varchar(10)
);

CREATE TABLE ShotOptions (
	shots integer,
	shotPrep varchar(15),
	decaf varchar(15)
);

CREATE TABLE SyrupAndSauceOptions (
	caramelSauce integer,
	vanillaSyrup integer,
	cocunutSyrup integer,
	honeySyrup integer,
	sugarFreeVanillaSyrup integer,
	chicorySyrup integer,
	chocolateSauce integer,
	whiteChocolateSauce integer,
	simpleSyrup integer,
	frenchHazelnutSyrup integer,
	brownSugarSyrup integer,
	pumpkinSyrup integer,
	caramelAppleButterSyrup integer
);

CREATE TABLE Toppings (
	caramelDrizzle varchar(10),
	bakingSpice varchar(10),
	whippedCream varchar(10),
	cinnamon varchar(10)
);


-- Allow users to select data from the tables.

GRANT SELECT ON CompletedOrder TO PUBLIC;
GRANT SELECT ON DrinkMenu TO PUBLIC;
GRANT SELECT ON FoodMenu TO PUBLIC;
GRANT SELECT ON DrinkSpecification TO PUBLIC;
GRANT SELECT ON	DrinkItem TO PUBLIC;
GRANT SELECT ON FoodItem TO PUBLIC;
GRANT SELECT ON MilkPrep  TO PUBLIC;
GRANT SELECT ON SyrupAndSauceOptions TO PUBLIC;
GRANT SELECT ON ShotOptions TO PUBLIC;
GRANT SELECT ON Toppings TO PUBLIC;

-- Add sample records.

INSERT INTO CompletedOrder VALUES;

INSERT INTO DrinkMenu VALUES;

INSERT INTO FoodMenu VALUES;

INSERT INTO DrinkSpecification VALUES;

INSERT INTO DrinkItem VALUES;

INSERT INTO FoodItem VALUES;

INSERT INTO MilkPrep VALUES;

INSERT INTO SyrupAndSauceOptions TO PUBLIC;

INSERT INTO ShotOptions TO PUBLIC;

INSERT INTO Toppings TO PUBLIC;
