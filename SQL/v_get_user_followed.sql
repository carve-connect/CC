CREATE VIEW `v_get_user_followed` AS
select user_Id2 from follows 
where user_Id1 like id and type like'follow' and user_Id2 > 0  ;
