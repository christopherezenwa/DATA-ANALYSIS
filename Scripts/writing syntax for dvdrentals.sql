--select statement
select * from actor;
select * from address;
select * from film;

--Return the title, description, release_year and rating
select title, description, release_year,rating
from film;

--return the first name and last name of actors
select first_name,last_name
from actor;

select address, district,postal_code
from address;

--select distinct(used for recovering unique details)
select distinct rating 
from film;

select distinct replacement_cost
from film;

select distinct amount
from payment;

--select where statement(where clause is used to filter query based on condition)
select actor_id,first_name,last_name
from actor
where actor_id=105;

--select where statement using the "in" function
select actor_id,first_name,last_name
from actor
where actor_id in(1,10,25,108,200);

select * from film;
--return the title, release_year, length, rental_rate of R rated movies
select title,release_year,length,rating
from film
where length<=50;

--selct count statement
select*from film;
select count (*) from film;
select count (*) from customer;

select count (*)
from film
where rating ='R';

--limit
select * from rental limit 5;
select * from city limit 3;
select * from customer limit 5;

--order by statement(it allows you to arrange your results in ascending or descending order)
select first_name, last_name,email
from customer
order by first_name asc;

select first_name, last_name,email
from customer
order by first_name desc;

select * from payment;
--top 10 customers that paid the most money
select customer_id, amount
from payment
order by amount desc
limit 10;

--get the titles of the movies with film IDs 1-5(from the film table)
select film_id,title
from film
order by film_id
limit 5;

--between statement(lower value to higher value)
select * from payment;

select customer_id,staff_id,amount
from payment
where amount between 3 and 5
order by amount desc;

select count (*)
from payment
where amount between 3 and 5;

--In statement allows you check for values in a list
select * from customer;

select first_name,last_name,email
from customer
where first_name in ('Mary','Maria','Susan','Michael');

--like & ilike statement(allows you to search for things)
select * from customer;

select first_name,last_name,email
from customer
where first_name like 'Ja%';

select first_name,last_name,email
from customer
where first_name ilike 'ja%';

--Aggregate functions(count,min,max,avg and sum)
select * from payment;

select count (*) from payment;
select min (amount) from payment;
select max (amount) from payment;
select round (avg(amount), 2) from payment;
select sum (amount) from payment;

--Group by statement(allows you to group your result ad works with aggregate functions)
select * from film;

select rating,  count (rating)
from film
group by rating
order by count(rating) desc;

select customer_id,sum(amount)
from payment
group by customer_id
order by sum(amount) desc
limit 10;

--having clause is used in conjunction with the group by

select customer_id,sum(amount)
from payment
group by customer_id
having sum(amount)>= 180
order by sum(amount)desc;

select * from customer;

select store_id, count(customer_id)
from customer
group by store_id
having count(customer_id) >300;

--As statement
select * from customer;

select first_name as name, last_name as surname, email as mailing_details
from customer;







