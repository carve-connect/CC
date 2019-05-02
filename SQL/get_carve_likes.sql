CREATE DEFINER=`root`@`localhost` PROCEDURE `get_carve_likes`(in c_id int)

BEGIN

select likes.*, carves.carve_id from likes join carves on carves.carve_id = likes.carve where carve_id=c_id;
-- join likes to carve where carve = carve_id

END