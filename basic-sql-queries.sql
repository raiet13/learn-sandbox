-- basic-sql-queries

/*
CREATE TABLE cats (
    id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    breed TEXT,
    owner_id INTEGER
);
*/

/*
INSERT INTO cats (name, age, breed, owner_id) VALUES ("Maru", 3 , "Scottish Fold", 1);
INSERT INTO cats (name, age, breed, owner_id) VALUES ("Hana", 1 , "Tabby", 1);
INSERT INTO cats (name, age, breed) VALUES ("Lil\' Bub", 5, "American Shorthair");
INSERT INTO cats (name, age, breed) VALUES ("Moe", 10, "Tabby");
INSERT INTO cats (name, age, breed) VALUES ("Patches", 2, "Calico");
*/

Top-Tip: You can format the output of your select statements with a few helpful options:

.header on       # output the name of each column
.mode column     # now we are in column mode, enabling us to run the next two .width commands
.width auto      # adjusts and normalizes column width
# or
.width NUM1, NUM2 # customize column width

/*

SELECT column_name FROM table_name ORDER BY column_name ASC|DESC;
  SELECT * FROM cats ORDER BY age;
  SELECT * FROM cats ORDER BY age DESC;

SELECT * FROM cats ORDER BY age DESC LIMIT #;

SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
  SELECT name FROM cats WHERE age BETWEEN 1 AND 3;

SELECT COUNT([column name]) FROM [table name] WHERE [column name] = [value]
  SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;

SELECT breed, COUNT(breed) FROM cats GROUP BY breed;
  SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;

SELECT name FROM cats; = SELECT cats.name FROM cats;

*/

CREATE TABLE dogs (
    id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO dogs (name) VALUES ("Clifford");

SELECT cats.name, dogs.name FROM cats, dogs;
