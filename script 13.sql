use sakila;
/*8.1*/
SELECT count(*) FROM payment;

/*8.2*/
SELECT customer_id, count(*), sum(amount)
FROM payment
GROUP BY customer_id;

/*8.3*/
SELECT customer_id, count(*), sum(amount)
FROM payment
GROUP BY customer_id
HAVING count(*) >= 40;
