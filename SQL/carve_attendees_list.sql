CREATE PROCEDURE `carve_attendees_list` (in id int)

BEGIN

SELECT * from all_carve_attendees 
left join all_users 
on all_carve_attendees.user = all_users.user_id
where user_id = id;

END

