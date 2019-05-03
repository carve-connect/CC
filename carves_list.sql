CREATE PROCEDURE `carves_list` ()

BEGIN

select * from all_carves 
left join all_carve_attendees 
on all_carves.carve_id = all_carve_attendees.carve 
left join all_users 
on all_carve_attendees.user = all_users.user_id 
where all_carves.type = 'open';

END

