CREATE VIEW `v_get_users_inbox` AS
select * from all_messages where rec_id like id and (type like 'normal' or type like 'reply');
