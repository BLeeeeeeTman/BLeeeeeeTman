/*4.3*/
use sakila;
select amount  
from payment 
where amount 
in (1.98, 7.98, 9.98);

/*4.4*/
select first_name, last_name
from customer
where last_name
like '_A%W%';