--How much is the total donation
select sum(donation) as total_donation
from donation_data;

--what is the total donation by gender
select gender, sum(donation) as total_donation
from donation_data
group by gender
order by 2 desc;

--show the total donation and number of donations by gender
select gender, count(donation) as number_of_donations,sum(donation) as total_donations
from donation_data
group by gender
order by 2 desc;

--Total donation made by frequency of donation
select donation_data.id,sum(donation) as total_donation, donor_data.donation_frequency as frequency_of_donation
from donation_data
left join donor_data
on donation_data.id=donor_data.id
group by donation_data.id, donor_data.donation_frequency;

--Total donation and number of donation by job field
select job_field, sum(donation) as total_donation,count(donation)as no_of_donations
from donation_data
group by job_field
order by 2 desc;

--Total donation and number of donations above $200
select sum(donation), count(donation)
from donation_data
where donation>=200
group by donation;

--Total donation and number of donations below $200
select sum(donation),count(donation)
from donation_data
where donation<=200

--which top 10 states contributes the highest donations
select state, sum(donation) as total_donations
from donation_data
group by state
order by 2 desc
limit 10;

--which top 10 states contributes the least donation
select state, sum(donation) as total_donations
from donation_data
group by state
order by 2 asc
limit 10;

--What are the top 10 cars driven by the highest donors
select donation_data.id, first_name,last_name,donor_data.car, donation_data.donation
from donation_data
inner join donor_data
on donation_data.id = donor_data.id
order by donation desc
limit 10;

