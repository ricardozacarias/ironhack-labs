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

# 2. Which is the genre with more apps rated?

select prime_genre, count(id)
from applestore
where rating_count_tot > 0
group by prime_genre
order by count(id) desc
limit 1;

# 3. Which is the genre with more apps?

select prime_genre, count(id)
from applestore
group by prime_genre
order by count(id) desc
limit 1;

# 4. Which is the one with less?

select prime_genre, count(id)
from applestore
group by prime_genre
order by count(id) asc
limit 1;

# 5. Take the 10 apps most rated.

select track_name
from applestore
order by rating_count_tot desc
limit 10;

# 6. Take the 10 apps best rated by users.

select track_name
from applestore
order by user_rating desc
limit 10;

# 10. How could you take the top 3 regarding the user ratings but also the number of votes?
select track_name, user_rating, rating_count_tot
from applestore
order by user_rating desc, rating_count_tot desc
limit 3;

# 11. Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?
select price, avg(rating_count_tot)
from applestore
group by price
order by price asc
limit 10;



