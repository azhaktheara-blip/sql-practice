-- find the new sfatt -
select title, AGE(from_date, to_date) as age_of  from titles order by age_of desc limit 20;
