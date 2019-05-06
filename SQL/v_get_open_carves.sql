CREATE VIEW `v_get_open_carves` AS
select * from all_carves where type like 'open';