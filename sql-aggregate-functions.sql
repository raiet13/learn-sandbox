-- sql-aggregate-functions
-- Use the following aggregrate functions in SQL queries: average, sum, count, minimum, maximum

/*

SELECT AVG(column_name) FROM table_name;
  SELECT AVG(net_worth) FROM cats;

SELECT AVG(net_worth) AS average_net_worth FROM cats;

SELECT SUM(column_name) FROM table_name;

SELECT MIN(column_name) FROM table_name;

SELECT MAX(column_name) FROM table_name;

SELECT COUNT(column_name) FROM table_name;
SELECT COUNT(*) FROM cats WHERE net_worth > 1000000;


*/



CREATE TABLE cats (
  name TEXT,
  age INTEGER,
  breed TEXT,
  net_worth INTEGER
);

INSERT INTO cats (name, age, breed, net_worth) VALUES ("Maru", 3, "Scottish Fold", 1000000);
INSERT INTO cats (name, age, breed, net_worth) VALUES ("Hana", 1, "Tabby", 21800);
INSERT INTO cats (name, age, breed, net_worth) VALUES ("Grumpy Cat", 4, "Persian", 181600);
INSERT INTO cats (name, age, breed, net_worth) VALUES ("Lil' Bub", 2, "Tortoiseshell", 2000000);
