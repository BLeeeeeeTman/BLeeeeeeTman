 /* 6.1 */
/*    A = {L,M,N,O,P} B = {P,Q,R,S,T}
    
    {L,M,N,O,P,Q,R,S,T}
   
   	{L,M,N,O,P,P,Q,R,S,T}
   	
   	{P}
   	
   	{L,M,N,O}
*/   	
   	
 
  /* 6.2 */ 
 /*   
    use sakila;
    SELECT a.first_name, a.last_name
    FROM actor a
    WHERE a.last_name like "L%"
    union
    SELCT c.first_name, c.last_name
    FROM customer c
    WHERE c.last_name LIKE "L%" 	
 */
 
 
 /* 6.3 */
/*
 	use sakila;
    SELECT a.first_name, a.last_name
    FROM actor a
    WHERE a.last_name like "L%"
    union
    SELCT c.first_name, c.last_name
    FROM customer c
    WHERE c.last_name LIKE "L%" order by last_name asc;
 
*/
