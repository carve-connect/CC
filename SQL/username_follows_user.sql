CREATE PROCEDURE `username_follows_user` (in id int)
BEGIN

select all_users.username, follows.user_Id1 
FROM all_users  
Join follows 
on all_users.username= follows.user_id1 
where user_id2 = id 
and follows.type = 'follows';
-- join username(all_users) onto follows for user_id1 . if user_id2 
-- exists where user_id2 = id and type = 'follows'

END
