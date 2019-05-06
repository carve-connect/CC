CREATE VIEW `v_buddy_list` AS
select user_id2 from all_follows where type like 'buddy' 
and user_id1 like 1 union select user_id1 as user_id2 
from all_follows where type like 'buddy' and user_id2 like 1 ;
