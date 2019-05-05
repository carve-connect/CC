CREATE PROCEDURE `carve_media_likes_count` (in returnCarve int)
BEGIN
select count(all_likes.type) as 'Total Likes' from all_media 
left join all_carves on all_media.carve = all_carves.carve_id 
left join all_likes on all_media.media_id = all_likes.media 
where all_likes.type = 'like' and all_carves.carve_id = returnCarve;
END