create database apple_store;
CREATE TABLE IF NOT EXISTS apps (
unnamed INT,
id INT PRIMARY KEY,
track_name VARCHAR(100), 
size_bytes INT, 
currency VARCHAR(100), 
price FLOAT, 
rating_count_tot INT,
rating_count_ver INT,
user_rating FLOAT,
user_rating_ver FLOAT,
ver VARCHAR(100),
cont_rating VARCHAR(100),
prime_genre VARCHAR(100),
sup_devices_num INT,
ipadSc_urls_num INT,
lang_num INT,
vpp_lic INT);

# THIS IS WHAT WE DID IN CLASS, LAB STARTS A LITTLE BIT BELOW

#selecting max price
# having fun while casting! casting is fun!
select * 
from applestore
order by price desc
limit 5;

# from this table how do we get average rating?

select avg(rating_count_tot)
from (select *
from applestore
order by price desc
limit 5) summary;

select * from applestore;

# how many app are free among the ones sold in the US, casting is still fun. i like to cast.

select count(price)
from (select * 
from applestore
where currency = 'USD') summary
where price = 0;

select distinct currency 
from applestore
where currency like '%D';

# THE LAB ACTUALLY STARTS HERE.
# 1. Which are the different genres?

select distinct prime_genre
from applestore;





