CREATE VIEW `v_get_dislikes` AS
select * from likes where type like 'dislike';
