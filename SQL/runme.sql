use CCv3;

DROP PROCEDURE IF EXISTS new_user;

DELIMITER |
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_user`(in us VARCHAR(40), in em VARCHAR(40), in pwd VARCHAR(40), IN fn VARCHAR(40), IN ln VARCHAR(40), IN ath tinyint, In pho TINYINT, IN snow TINYINT, IN ska TINYINT, IN su TINYINT, IN mb TINYINT, IN sk TINYINT, IN fa TINYINT)
BEGIN
  insert into user(username, email,password,first_name,last_name,athlete,photographer,snowboard,skateboard, surf,mountain_bike,ski,fan)
  Values(us, em,pwd,fn,ln,ath,pho,snow,ska,su,mb,sk,fa);
END |

call new_user("frosty","312@abc.com", "abc1234","Sean","Klinglesmith", 0, 1, 1,0,0,0,0,0);
call new_user("cmarcy","def@123.com", "abc1234","Christian","Marcy", 1, 0, 1,0,0,0,0,0);
call new_user("shred","456@abc.com", "abc1234","Fred","Budde", 1, 1, 1,0,0,0,0,0);
call new_user("wheels","492@abc.com", "abc1234","Brandon","Wheeler", 0, 1, 0,1,0,0,0,0);
call new_user("Jman","789@abc.com", "abc1234","RJ","Boucher", 1, 0, 0,1,0,0,0,0);
call new_user("moneyman","467@abc.com", "abc1234","Dhruv","Patel", 1, 1, 0,0,1,1,0,0);
call new_user("Andez","789@abc.com", "abc1234","Dylan","Anderson", 1, 0, 0,1,1,0,0,0);
call new_user("iceman","223@abc.com", "abc1234","MD","Monir", 0, 1, 1,0,0,1,1,0);