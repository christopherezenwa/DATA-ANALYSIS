select *
from customer
limit 5;

select *
from payment
limit 5;

--inner join

select customer.customer_id,first_name,last_name,email,amount,payment.payment_date
from customer 
inner join payment 
on customer.customer_id = payment.customer_id;

--Left join

select * 
from film
limit 5;

select * 
from inventory
limit 5;

select film.film_id,title,inventory_id
from film
left join inventory
on film.film_id = inventory.film_id 
where inventory_id is null;

--right join

select inventory_id, inventory.film_id,title
from film
right join inventory
on film.film_id = inventory.film_id;

--Full join

select film.film_id,title,inventory_id
from film
full join inventory
on film.film_id = inventory.film_id 
where inventory_id is null;

