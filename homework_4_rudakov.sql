use seminar_geekbrains;
select *
from likes;
-- count total likes, age less than 12
select 
	count(media_id) as total_likes
from likes
left join profiles
	using (user_id)
where birthday > '2011-01-01'