# Advanced MySQL - Ricardo Zacarias

-- Challenge 1 - Most Profiting Authors
select royalty_calc.au_id, round(sum(royalty_calc.sales_royalty) + royalty_calc.advance, 2) profit
from (
select ta.au_id, ta.title_id, t.advance, t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) sales_royalty
from titleauthor ta
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id) royalty_calc
group by royalty_calc.title_id, royalty_calc.au_id
order by profit desc
limit 3;


-- Challenge 2 - Alternative Solution
create temporary table publications.author_profit
select ta.au_id, ta.title_id, s.qty, t.price, t.advance, t.royalty, ta.royaltyper, t.price * s.qty * (t.royalty/100) * (ta.royaltyper/100) sales_royalty
from titleauthor ta
inner join titles t on ta.title_id = t.title_id
inner join sales s on ta.title_id = s.title_id;

select ap.au_id, ap.title_id, sum(ap.sales_royalty) + ap.advance profit
from author_profit ap
group by ap.au_id, ap.title_id
order by profit desc
limit 3;

-- Challenge 3

create table publications.most_profiting_authors
select ap.au_id, sum(ap.sales_royalty) + ap.advance profit
from author_profit ap
group by ap.au_id, ap.title_id
order by profit desc;












