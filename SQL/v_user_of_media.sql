CREATE VIEW `v_user_of_media` AS
select * from users where users.user_id like media.profile;
