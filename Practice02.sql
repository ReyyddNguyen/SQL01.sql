-- bai 1
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;

-- bai 2
SELECT 
    (COUNT(CITY) - COUNT(DISTINCT CITY)) AS difference
FROM STATION;

-- bai 3
SELECT 
    CEIL(AVG(Salary) - AVG(CAST(REPLACE(Salary, '0', '') AS UNSIGNED))) AS error_difference
FROM EMPLOYEES;

--bai 4
SELECT 
    ROUND(CAST(SUM(item_count * order_occurrences)/SUM(order_occurrences)AS DECIMAL), 1) AS mean
FROM items_per_order;

--bai 5 
SELECT candidate_id FROM candidates
where skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
having 
count (skill)= 3;

--bai 6
SELECT 
max(post_date) - min(post_date) as days_between
FROM posts
where post_date BETWEEN '2021/01/01' and '2022/01/01'
GROUP BY user_id;

--bai 7
SELECT card_name, 
max(issue_month) - min (issue_month) as difference
FROM monthly_cards_issued
group by card_name 
order by difference desc;

--bai 8
SELECT manufacturer, 
count(drug) as grug_count,
abs(sum(cogs - total_sales)) as total_loss 
FROM pharmacy_sales
where total_sales <cogs
group by manufacturer 
order by total_loss;

--bai 9 
# Write your MySQL query statement below
select * from cinema
where id%2 = 1 and description <> 'boring'
order by rating desc;

-- bai 10 
select teacher_id, count( distinct subject_id) as cnt
from teacher
group by teacher_id; 


--bai 11 
select user_id, count(follower_id) as followers_count
from followers
group by user_id
order by user_id;

-- bai 12 
select class from course
group by class
having count(student) >=5;



