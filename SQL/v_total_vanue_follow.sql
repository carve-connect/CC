CREATE VIEW `v_total_vanue_follow` AS
select count(follow_id) as 'total_vanue_follow' from follows where venue_id like returnCarve;