CREATE VIEW `v_get_profile_media` AS
select * from all_media where profile like id;