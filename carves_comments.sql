CREATE PROCEDURE `carves_comments` ()

BEGIN

select * from all_carves 
left join all_comments 
on all_carves.carve_id = all_comments.carve
 left join  all_likes 
 on all_comments.comment_id = all_likes.comment 
 where all_carves.type = 'open';

END

