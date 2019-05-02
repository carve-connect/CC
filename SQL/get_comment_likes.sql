CREATE PROCEDURE `get_comment_likes` ()

BEGIN

select comments.comment, likes.comment from comments join likes on likes.comment  = comments.comment_id;

-- join likes to comment where comment  = comment_id

END
