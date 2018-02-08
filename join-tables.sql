-- join-tables

/*

SELECT column(s)
FROM table_one
INNER JOIN table_two
ON table_one.column_name = table_two.column_name
WHERE table_two.column_name = condition;

*/

CREATE TABLE cats (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
breed TEXT
);

CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);

INSERT INTO owners (name) VALUES ("mugumogu");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");
INSERT INTO cats (name, age, breed) VALUES ("Maru", 3, "Scottish Fold");
INSERT INTO cats (name, age, breed) VALUES ("Hana", 3, "Tabby");
INSERT INTO cats (name, age, breed) VALUES ("Nona", 4, "Tortoiseshell" );
INSERT INTO cats (name, age, breed) VALUES ("Lil' Bub", 2, "perma-kitten");

CREATE TABLE cats_owners (
cat_id INTEGER,
owner_id INTEGER
);

INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 3);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 2);

SELECT * FROM cats_owners;

SELECT cats_owners.owner_id FROM cats_owners WHERE cat_id = 3;
SELECT owners.name FROM owners INNER JOIN cats_owners ON owners.id = cats_owners.owner_id WHERE cats_owners.cat_id = 3;
