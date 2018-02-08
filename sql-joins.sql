-- sql-joins

/*

Important Note: SQLite doesn't currently support RIGHT OUTER JOINs or FULL OUTER JOINs.

Type	Description
INNER JOIN	Returns all rows when there is at least one match in BOTH tables
LEFT JOIN	Returns all rows from the left table, and the matched rows from the right table
RIGHT JOIN	Returns all rows from the right table, and the matched rows from the left table
FULL JOIN	Returns all rows when there is a match in ONE of the tables

INNER JOIN
  SELECT column_name(s)
  FROM first_table
  INNER JOIN second_table
  ON first_table.column_name = second_table.column_name;

LEFT OUTER JOIN
  SELECT column_name(s)
  FROM first_table
  LEFT JOIN second_table
  ON first_table.column_name=second_table.column_name;



*/

CREATE TABLE cats (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
breed TEXT,
owner_id INTEGER);

CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);

INSERT INTO owners (name) VALUES ("mugumogu");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO cats (name, age, breed, owner_id) VALUES ("Maru", 3, "Scottish Fold", 1);
INSERT INTO cats (name, age, breed, owner_id) VALUES ("Hana", 3, "Tabby", 1);
INSERT INTO cats (name, age, breed, owner_id) VALUES ("Nona", 4, "Tortoiseshell", 2);
INSERT INTO cats (name, age, breed) VALUES ("Lil' Bub", 2, "perma-kitten");
