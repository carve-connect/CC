CREATE VIEW `v_get_users_messages` AS
select * from all_messages where sender_id like id or rec_id like id;
