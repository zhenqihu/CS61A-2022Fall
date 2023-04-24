.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students
  WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students
  WHERE color = "blue" AND pet = "dog";

CREATE TABLE smallest_int_having AS
  SELECT time, smallest FROM students
  GROUP BY smallest HAVING COUNT(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
  FROM students AS a, students AS b
  WHERE a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT a.seven FROM students AS a, numbers AS b
  WHERE a.number = 7 AND b."7" = "True" AND a.time = b.time;


CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) as average_price
  FROM products
  GROUP BY category;


CREATE TABLE lowest_prices AS
  SELECT store, item, price
  FROM inventory
  GROUP BY item
  HAVING MIN(price);


CREATE TABLE shopping_list AS
  SELECT a.name, b.store
  FROM products as a, lowest_prices as b
  WHERE a.name = b.item
  GROUP BY a.category
  HAVING MIN(a.msrp / a.rating);


CREATE TABLE total_bandwidth AS
  SELECT SUM(b.Mbs)
  FROM shopping_list as a, stores as b
  WHERE a.store = b.store;

