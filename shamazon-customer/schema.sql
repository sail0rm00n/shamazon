DROP DATABASE IF EXISTS shamazon;
CREATE DATABASE shamazon;
USE shamazon;

CREATE TABLE products (
    item_id INTEGER(3) NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    department VARCHAR(150) NOT NULL,
    price DECIMAL(5,2) NOT NULL,
    stock INTEGER(5) NOT NULL,
    PRIMARY KEY (item_id)
);

-- mock data
INSERT INTO products (name, department, price, stock)
VALUES ("peonies", "nature", 15, 200);

INSERT INTO products (name, department, price, stock)
VALUES ("deer", "pets", 2500, 10);

INSERT INTO products (name, department, price, stock)
VALUES ("Royce Potatochip Chocloate 'Original'", "dessert", 17.00, 150);

INSERT INTO products (name, department, price, stock)
VALUES ("Bubble Umbrella", "accessories", 35.00, 80);

INSERT INTO products (name, department, price, stock)
VALUES ("Nars Blush 'Sex Appeal'", "makeup/beauty", 30.00, 120);

INSERT INTO products (name, department, price, stock)
VALUES ("Joan Didion, Slouching Towards Bethlehem", "books", 15, 1000);

INSERT INTO products (name, department, price, stock)
VALUES ("bucket hat", "accessories", 80.00, 200);

INSERT INTO products (name, department, price, stock)
VALUES ("Miles Davis, Kind of Blue", "music", 45.00, 200);

INSERT INTO products (name, department, price, stock)
VALUES ("potion", "magic", 110.50, 5);

INSERT INTO products (name, department, price, stock)
VALUES ("Nine Tails", "pets", 3800, 3);