CREATE PROCEDURE `carve_comments_dislikes_count` (in returnCarve int)
BEGIN
select count(all_likes.type) as 'Total Likes' from all_media 
left join all_carves on all_comments.carve = all_carves.carve_id 
left join all_likes on all_comments.comment_id = all_likes.comments
where all_likes.type = 'dislike' and all_carves.carve_id = returnCarve;
END