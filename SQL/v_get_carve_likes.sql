CREATE VIEW `v_get_carve_likes` AS
select * from all_likes where carve like id and type like 'like';
