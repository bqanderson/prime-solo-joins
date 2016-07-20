--1 Get all customers and their addresses.
SELECT customers.first_name, customers.last_name, addresses.street, addresses.city, addresses.state, addresses.zip FROM customers INNER JOIN addresses ON addresses.customer_id = customers.id;

--2 Get all orders and their line items.
SELECT orders.id, orders.order_date, orders.total, line_items.unit_price, line_items.quantity
FROM orders LEFT OUTER JOIN line_items ON line_items.order_id = orders.id;

--3 Which warehouses have cheetos?
SELECT products.description, warehouse.warehouse FROM warehouse_product.product_id IS 5;

--4 Which warehouses have diet pepsi?

--5 Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.

--6 How many customers do we have?

--7 How many products do we carry?

--8 What is the total available on-hand quantity of diet pepsi?
