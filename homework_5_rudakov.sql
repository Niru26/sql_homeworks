-- task 1 (show persons not older than 20)
select 
	u.firstname,
    u.lastname,
    p.hometown,
    p.gender
from profiles p
left join users u
	on u.id = p.user_id
where p.birthday > '2003-01-01';

-- task 2
select
	u.firstname,
    u.lastname,
	sum(from_user_id)
	over (
		partition by from_user_id
        order by firstname) as 'messages_quantity'
from messages m
left join users u
	on m.from_user_id = u.id;