CREATE PROCEDURE ` carves_media` ()

BEGIN

select * from all_carves
 left join all_media 
 on all_carves.carve_id = all_media.carve 
 left join all_likes 
 on all_media.media_id = all_likes.media 
 left join all_comments 
 on all_media.media_id = all_comments.media
 left join LIKES 
 on all_comments.comment_id = LIKES.comment 
 where all_carves.type = 'open';

END

