CREATE PROCEDURE `venue_name_follows` (in id int)
BEGIN

select venues.venue_name, follows.venue_id
 from venues  
 join follows on venues.venue_id = follows.venue_id
 where venue_id = id;
 
-- join venue(all_venues) name onto follows for venue_id
END
