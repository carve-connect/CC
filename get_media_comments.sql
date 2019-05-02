CREATE PROCEDURE `get_media_comments` (in M_id int)

BEGIN

select comments.media, media.media_id from comments join media 
on comments.media = media.media_id 
where media_id = M_id;

-- join comment to media where media = media_id

END
