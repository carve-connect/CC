CREATE PROCEDURE `caveAttendees_to_Users` (in id int)

BEGIN

select all_users.user_id, CARVE_ATTENDEES.user
 from all_users 
 join CARVE_ATTENDEES.user = all_users.user_id 
 where user_id = id;
 
END
-- join username (all_users) onto carve attendees for user = user_id
