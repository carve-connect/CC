CREATE PROCEDURE `userid2_username_follows` (in id int)
BEGIN

select all_users.username, follows.user_Id2 
FROM all_users  
Join follows 
on all_users.username= follows.user_id2 
where user_id1 = id
and follows.type = 'follows';
-- join username(all_users) onto follows for user_id1 . if user_id2 
-- exists where user_id2 = id and type = 'follows'

END
