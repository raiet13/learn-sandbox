-- order-group-by-limit-having

/*

ORDER BY
  SELECT column_name, column_name
  FROM table_name
  ORDER BY column_name ASC|DESC, column_name ASC|DESC;

LIMIT
  SELECT column_name FROM table_name LIMIT #;

GROUP BY
  SELECT column_name, aggregate_function(column_name)
  FROM table_name
  WHERE column_name operator value
  GROUP BY column_name;

HAVING VS WHERE
  The difference between the HAVING and WHERE clause in SQL is that the WHERE clause can not be used with aggregates but the HAVING clause can. One way to think of it is that the HAVING clause is an additional filter to the WHERE clause.


*/

CREATE TABLE cats (
id INTEGER PRIMARY KEY,
name TEXT,
age INTEGER,
breed TEXT,
net_worth INTEGER
);

CREATE TABLE owners (id INTEGER PRIMARY KEY, name TEXT);

CREATE TABLE cats_owners (
cat_id INTEGER,
owner_id INTEGER
);

INSERT INTO cats (id, name, age, breed, net_worth) VALUES (1, "Maru", 3, "Scottish Fold", 1000000);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (2, "Hana", 1, "Tabby", 21800);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (3, "Grumpy Cat", 4, "Persian", 181600);
INSERT INTO cats (id, name, age, breed, net_worth) VALUES (4, "Lil\' Bub", 2, "Tortoiseshell", 2000000);

INSERT INTO owners (name) VALUES ("mugumogu");
INSERT INTO owners (name) VALUES ("Sophie");
INSERT INTO owners (name) VALUES ("Penny");

INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 2);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (3, 3);
INSERT INTO cats_owners (cat_id, owner_id) VALUES (1, 2);

SELECT * FROM cats WHERE net_worth > 0;
SELECT * FROM cats ORDER BY(net_worth) DESC;

SELECT * FROM cats ORDER BY(net_worth) DESC LIMIT 1;

SELECT SUM(cats.net_worth) FROM owners INNER JOIN cats_owners ON owners.id = cats_owners.owner_id JOIN cats ON cats_owners.cat_id = cats.id WHERE cats_owners.owner_id = 2;
