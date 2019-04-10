CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INTEGER,
  height INTEGER,
  city VARCHAR(255),
  favorite_color VARCHAR(255));


  INSERT INTO person (name, age, height, city, favorite_color)
  VALUES
  ('Lily Hart', 18, 161, 'Grand Rapids', 'Red'),
  ('Nate JeffJeff', 21, 190, 'Rockford', 'Green'),
  ('Chris Hart', 50, 193, 'Grand Rapids', 'Green'),
  ('Linda Adams', 70, 163, 'Muskegeon', 'Blue'),
  ('Joanna Nix', 21, 175, 'Grand Rapids', 'Black');

SELECT * FROM person ORDER BY height DESC;

SELECT * FROM person ORDER BY height ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person WHERE favorite_color != 'Red';

SELECT * FROM person WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person WHERE favorite_color IN ('Orange','Green', 'Blue');

SELECT * FROM person WHERE favorite_color IN ('Yellow','Purple');




CREATE TABLE orders (
  person_id SERIAL PRIMARY KEY,
  product_name VARCHAR(200),
  product_price INTEGER,
  quantity INTEGER);
  
INSERT INTO orders (product_name, product_price, quantity)
VALUES
('Eggs', 4.00, 3),
('Toast', 5.00, 2),
('Bacon', 3.50, 4),
('Fruit', 2.00, 2),
('Oatmeal', 3.00, 4);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2;

INSERT INTO artist (name)
VALUES
('Hannah Montana'),
('Billie Eilish'),
('Fisco');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM artist WHERE name LIKE 'BLACK%';

SELECT * FROM artist WHERE name LIKE '%BLACK%';

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT birth_date, first_name, last_name FROM employee ORDER BY birth_date DESC;

SELECT birth_date, first_name, last_name FROM employee ORDER BY birth_date ASC;

SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT first_name, last_name FROM employee WHERE reports_to = 2;

SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT total FROM invoice WHERE total > 5;

SELECT COUNT(total) FROM invoice WHERE total < 5;

SELECT COUNT(*) FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;
