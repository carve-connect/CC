CREATE DEFINER=`root`@`localhost` PROCEDURE `get_media_likes`(in id int)

BEGIN

select likes.media, media.media_id from likes
 join media 
 on likes.media = media_id
 where media_id = id;
 
END
-- join likes to media where media = media_id