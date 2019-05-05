CREATE VIEW `v_get_venue_media` AS
select * from all_media where venue like id;
