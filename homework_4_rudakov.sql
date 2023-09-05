use seminar_geekbrains;
select *
from likes;
-- TASK 1: count total likes, age less than 12
select 
	count(media_id) as total_likes
from likes
left join profiles
	using (user_id)
where birthday > '2011-01-01';

-- TASK 2: who liked more
select * 
from profiles
join likes
	using (user_id); -- show all records
    
select
	'Female' as sex,
	count(gender) as likes
from profiles
join likes
	using (user_id)
where gender = 'f'
union
select
	'Male' as sex,
	count(gender) as likes
from profiles
join likes
	using (user_id)
where gender = 'm';

-- TASK 3: show all user not sending messages
select * 
from profiles as p
left join messages as m
	on p.user_id = m.from_user_id
-- where from_user_id = null