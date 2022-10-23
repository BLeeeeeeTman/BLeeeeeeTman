use sakila;
select actor_id,first_name,last_name from actor order by last_name,first_name; /*3.1*/

select actor_id,first_name,last_name from actor where (last_name = "WILLIAMS") or (last_name = "DAVIS"); /*3.2*/

select customer_id from rental where date(rental_date = "2005-07-05"); /*3.3*/

SELECT c.email, r.return_date										/*3.4*/
FROM customer c
INNER JOIN rental , customer
ON c.customer_id = r.customer_id 
WHERE date(r.rental_date) = '2005-06-14'
ORDER BY c.return_date desc;