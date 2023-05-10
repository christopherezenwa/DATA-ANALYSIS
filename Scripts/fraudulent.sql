create table fraudulent(
step int, 
type varchar(20),
amount float,
nameorig varchar(50),
oldbalanceorg float,
newbalanceorig float,
namedest varchar(50),
oldbalancedest float,
newbalancedest float,
isfraud int,
isflaggedfraud int
);

copy public.fraudulent
from 'C:\Users\USER\OneDrive\Desktop\SQL\fraudulent transactions.csv'
delimiter ',' csv header;

select * 
from fraudulent;

--Transactions occurred per transaction type
select type, count (*) as no_of_transactions
from fraudulent
group by type
order by 2 desc;

--Which transaction type has the highest numberof fradulent transactions
select type,count (*) no_of_transactions
from fraudulent
group by type
order by 2 desc
limit 1;

--What is the average fraudulent transaction amount
select type, round(avg(amount))
from fraudulent
where isfraud=1
group by type

--What is the maximum fraudulent transaction amount
select max(amount)
from fraudulent;

--what is the minimum fraudulent transaction amount
select Min(amount)
from fraudulent;

--Top 10 customers with the highest amount defrauded
select nameorig, sum(amount)
from fraudulent
where isfraud=1
group by nameorig
order by 2 desc
limit 10;

--How effective is the bank in flagging fraud
select sum(isflaggedfraud) as isflaggedfraud,sum(isfraud) as isfraud,sum(isfraud)/sum(isflaggedfraud)as effectiveness
from fraudulent;

--Top 20 fraudsters
select namedest, sum(amount) as total_amount
from fraudulent
where isfraud =1
group by namedest
order by 2 desc
limit 20;