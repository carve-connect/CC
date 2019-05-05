CREATE VIEW `v_get_user_attended` AS
select * from carves where carve_id  
in (select carve from carve_attendees where user like 1);
