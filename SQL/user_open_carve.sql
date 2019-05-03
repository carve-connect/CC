CREATE PROCEDURE `user_open_carve` ()

BEGIN

select * from all_carves 
left join all_users 
on all_carves.creator = all_users.user_id 
where all_carves.type = 'open';

END

