CREATE VIEW `v_get_venues_followed` AS
select venue_Id from follows where user_Id1 like id and venue_Id > 0;
