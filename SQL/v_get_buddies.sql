CREATE VIEW `v_get_buddies` AS
select user_Id2 from follows where user_Id1 like usr and type like'buddy';
