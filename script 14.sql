use sakila;

/*9.1*/
SELECT title
FROM film
WHERE film_id IN
(SELECT fc.film_id
FROM film_category fc INNER JOIN category c
ON fc.category_id = c.category_id
WHERE c.name = 'Action');

/*9.2*/
SELECT f.title
FROM film f
WHERE EXISTS
(SELECT 1
FROM film_category fc INNER JOIN category c
ON fc.category_id = c.category_id
WHERE c.name = 'Action'
AND fc.film_id = f.film_id);

/*9.3*/
SELECT actr.actor_id, grps.level
FROM
(SELECT actor_id, count(*) num_roles
FROM film_actor
GROUP BY actor_id
) actr
INNER JOIN
(SELECT 'Hollywood Star' level, 30 min_roles, 99999 max_roles
UNION ALL
select 'Prolific Actor' level, 20 min_roles, 29 max_roles
UNION ALL
SELECT 'Newcomer' level, 1 min_roles, 19 max_roles
) grps
ON actr.num_roles BETWEEN grps.min_roles AND grps.max_roles;