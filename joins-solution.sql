--1 Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip FROM customers INNER JOIN addresses ON addresses.customer_id = customers.id;

--2 Get all orders and their line items.
SELECT orders.id, orders.order_date, orders.total, line_items.unit_price, line_items.quantity
FROM orders LEFT OUTER JOIN line_items ON line_items.order_id = orders.id;

--3 Which warehouses have cheetos?
SELECT * FROM products JOIN warehouse_product ON warehouse_product.product_id = products.id
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id WHERE products.description = 'cheetos';

--4 Which warehouses have diet pepsi?
SELECT * FROM products JOIN warehouse_product ON warehouse_product.product_id = products.id
JOIN warehouse ON warehouse_product.warehouse_id = warehouse.id WHERE products.description = 'diet pepsi';

--5 Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
SELECT customers.*, count(orders.id) FROM customers INNER JOIN addresses
ON addresses.customer_id = customers.id INNER JOIN orders ON orders.address_id = addresses.id
GROUP BY customers.id;

--6 How many customers do we have?
SELECT count(customers.id) FROM customers;

--7 How many products do we carry?
SELECT count(products.id) FROM products;

--8 What is the total available on-hand quantity of diet pepsi?
SELECT sum(warehouse_product.on_hand) FROM products
JOIN warehouse_product ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';
