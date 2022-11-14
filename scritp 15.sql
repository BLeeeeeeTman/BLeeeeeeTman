/*10.1*/
SELECT customer.name, sum(payment.amount) FROM customer LEFT OUTER JOIN payment ON customer.customer_id = payment.customer_id;

/*10.2*/
SELECT customer.name, sum(рayment.amount) FROM payment RIGHT OUTER JOIN customer ON customer.customer_id = payment.customer_id GROUP BY customer.name;

/*1*/
SELECT employees.Full_name, positions.id FROM employees LEFT OUTER JOIN positions ON positions.id = employees.Positions_id order by employees.Full_name;

/*2*/
SELECT employees.Full_name, employees.Address , positions.id FROM employees RIGHT OUTER JOIN positions ON positions.id = employees.Positions_id order by employees.Positions_id;