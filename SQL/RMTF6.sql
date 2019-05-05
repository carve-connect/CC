#here it is...
use CCv6;

#Users

INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('frosty', 'abc1@email.net', 'password', 'Sean', 'Klinglesmith',
        'Chill bro whos down for anything, anywhere, anytime', 'SEAN', ('Photographer,Videographer,Drone Operator'),
        ('Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski'),
        ('Surf,Water Ski,Kayak,Wakeboard,Paddleboard,Parasail,Kite Surf'),
        ('Skateboard,BMX,Mountain Bike,Rock Climb,Cliff Dive,Parkour'), ('Sky Dive,Hang Glide,Base Jump,Air Race'));
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('Cmart', 'abc2@email.net', 'password', 'Christian', 'Marcy', 'rad man who loves to shred', 'SnMb1', 'Athlete',
        'Downhill Ski', 'Water Ski', 'Skateboard', 'Hang Glide');
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('JRider', 'abc3@email.net', 'password', 'RJ', 'Boucher', 'pro dude who knows how to carve', 'Sn4',
        'Athlete,Pro Athlete', 'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'BMX', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('balthazar', 'abc4@email.net', 'password', 'Brandon', 'Wheeler', 'awesome bro who loves to shred the gnar',
        'Su1', 'Athlete', 'Snowboard', 'Surf,Paddleboard', 'Mountain Bike,Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('Shred', 'abc5@email.net', 'password', 'Fred', 'Budde', 'Fan of sports and loves to take pictures', 'FRED',
        'Photographer,Fan', 'Downhill Ski', 'Water Ski', NULL, NULL);
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('Iceman', 'abc6@email.net', 'password', 'Md', 'Monir', 'loves to film action sequences', 'Ph2', 'Videographer',
        'snowmobile', 'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('Dhruvp18', 'abc7@email.net', 'password', 'Dhruv', 'Patel', 'Timeless traveler', 'DHRUV',
        'Photographer,Videographer,Drone Operator', 'Snowboard', 'Surf,Paddleboard', 'Skateboard', NULL);
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('Andez', 'abc8@email.net', 'password', 'Dylan', 'Anderson', 'rad man who loves to shred', 'SkyDive1',
        'Athlete,Pro Athlete,Drone Operator', 'Downhill Ski', 'Water Ski', 'BMX', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, Password, first_name, last_name, description, Photo, type, Snow_sports, Water_sports,
                  land_sports, air_sports)
VALUES ('ProfMan', 'abc8@email.net', 'password', 'Dr.', 'Baliga', 'Awesome Professor', 'BALIGA',
        'Athlete,Pro Athlete,Drone Operator', 'Downhill Ski', 'Water Ski', NULL, 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman10', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask11', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan12', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox13', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks14', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand15', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan16', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper17', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain18', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans19', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing20', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog21', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator22', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower23', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue24', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel25', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow26', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman27', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne28', 'abc28@email.net', 'password', 'Arya', 'Stark', 'A girl is noone, except for a great snowborder',
        'Sn1', 'Athlete', 'Snowboard', 'Water Ski', 'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue29', 'user29@email.net', 'password', 'Pepper', 'Potts', 'catch me skydiving with my husband', 'Ph2',
        'Photographer', 'Downhill Ski', 'Surf', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored30', 'user30@email.net', 'password', 'Corvo', 'Attano', 'love to run around and jump off of things',
        'Su3', 'Athlete', 'snowmobile', 'Surf,Water Ski', 'BMX', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman11', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask12', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan13', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox14', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks15', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand16', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan17', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper18', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain19', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans20', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing21', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog22', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator23', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower24', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue25', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel26', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow27', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman28', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne29', 'abc28@email.net', 'password', 'Arya', 'Stark', 'A girl is noone, except for a great snowborder',
        'Sn1', 'Athlete', 'Snowboard', 'Water Ski', 'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue30', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored31', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman12', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask13', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan14', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox15', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks16', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand17', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan18', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper19', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain20', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans21', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing22', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog23', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator24', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower25', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue26', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel27', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow28', 'abc28@email.net', 'password', 'Arya', 'Stark',
        'A girl is noone, except for a great snowborder', 'Sn1', 'Athlete', 'Snowboard', 'Water Ski',
        'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman29', 'user29@email.net', 'password', 'Pepper', 'Potts', 'catch me skydiving with my husband',
        'Ph2', 'Photographer', 'Downhill Ski', 'Surf', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne30', 'user30@email.net', 'password', 'Corvo', 'Attano', 'love to run around and jump off of things',
        'Su3', 'Athlete', 'snowmobile', 'Surf,Water Ski', 'BMX', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue31', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored32', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman13', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask14', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan15', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox16', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks17', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand18', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan19', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper20', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain21', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans22', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing23', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog24', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator25', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower26', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue27', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel28', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow29', 'abc28@email.net', 'password', 'Arya', 'Stark',
        'A girl is noone, except for a great snowborder', 'Sn1', 'Athlete', 'Snowboard', 'Water Ski',
        'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman30', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne31', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue32', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored33', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman14', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask15', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan16', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox17', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks18', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand19', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan20', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper21', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain22', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans23', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing24', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home', 'SkyDive2',
        'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog25', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator26', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower27', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue28', 'abc28@email.net', 'password', 'Arya', 'Stark',
        'A girl is noone, except for a great snowborder', 'Sn1', 'Athlete', 'Snowboard', 'Water Ski',
        'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel29', 'user29@email.net', 'password', 'Pepper', 'Potts', 'catch me skydiving with my husband',
        'Ph2', 'Photographer', 'Downhill Ski', 'Surf', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow30', 'user30@email.net', 'password', 'Corvo', 'Attano', 'love to run around and jump off of things',
        'Su3', 'Athlete', 'snowmobile', 'Surf,Water Ski', 'BMX', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman31', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne32', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue33', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored34', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman15', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask16', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan17', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox18', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks19', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand20', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan21', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper22', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain23', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans24', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing25', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home', 'SkyDive2',
        'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog26', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator27', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower28', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue29', 'abc28@email.net', 'password', 'Arya', 'Stark',
        'A girl is noone, except for a great snowborder', 'Sn1', 'Athlete', 'Snowboard', 'Water Ski',
        'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel30', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow31', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman32', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne33', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue34', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored35', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman16', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask17', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan18', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox19', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks20', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand21', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan22', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper23', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain24', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans25', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing26', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog27', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator28', 'abc28@email.net', 'password', 'Arya', 'Stark',
        'A girl is noone, except for a great snowborder', 'Sn1', 'Athlete', 'Snowboard', 'Water Ski',
        'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower29', 'user29@email.net', 'password', 'Pepper', 'Potts', 'catch me skydiving with my husband',
        'Ph2', 'Photographer', 'Downhill Ski', 'Surf', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue30', 'user30@email.net', 'password', 'Corvo', 'Attano', 'love to run around and jump off of things',
        'Su3', 'Athlete', 'snowmobile', 'Surf,Water Ski', 'BMX', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel31', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow32', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman33', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne34', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue35', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored36', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman17', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask18', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan19', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox20', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks21', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand22', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan23', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper24', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain25', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans26', 'abc25@email.net', 'password', 'Carol', 'Danvers',
        'former airforce test pilot,Current Sky Diver', 'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing27', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog28', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator29', 'abc28@email.net', 'password', 'Arya', 'Stark',
        'A girl is noone, except for a great snowborder', 'Sn1', 'Athlete', 'Snowboard', 'Water Ski',
        'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower30', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue31', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel32', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow33', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman34', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne35', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue36', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored37', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman18', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HockeyMask19', 'user19@email.net', 'password', 'Hannibal', 'Lecter',
        'Doctor,Phsychologist,Chef,People person, lets hang out!', 'Ph3', 'Photographer', 'Snowboard', 'Water Ski',
        'BMX', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('IronMan20', 'user20@email.net', 'password', 'Luke', 'Skywalker', 'I use the force to shred the gnar!',
        'Su3', 'Athlete', 'Downhill Ski', 'Surf', 'Rock Climb', 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('EddieRox21', 'abc21@email.net', 'password', 'John', 'Wick', 'my dog and I love to Surf together', 'Ph3',
        'Photographer', 'Downhill Ski', 'Surf,Water Ski', 'BMX,Skateboard', 'BAse Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('TFranks22', 'abc22@email.net', 'password', 'Sarah', 'Connor', 'would travel time for some good waves',
        'Hg1', 'Athlete', 'Cross-Country Ski', 'Water Ski', 'Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('GoldHand23', 'abc23@email.net', 'password', 'Roland', 'Deschain',
        'I must find the dark tower, but first, let''s carve!', 'Ph1', 'Photographer', 'Cross-Country Ski', 'Surf',
        'Skateboard,BMX,Mountain Bike', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('HammerMan24', 'abc24@email.net', 'password', 'Nikki', 'Sixx', 'The beach is my home sweet home',
        'SkyDive2', 'Athlete', 'Cross-Country Ski', 'Surf,Water Ski', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Reaper25', 'abc25@email.net', 'password', 'Carol', 'Danvers', 'former airforce test pilot,Current Sky Diver',
        'SkyDive2', 'Photographer', 'Snowboard', 'Water Ski', 'BMX', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BestCaptain26', 'abc26@email.net', 'password', 'Natasha', 'Romanov',
        'freerunning is my life outside of the avengers', 'SkPh2', 'Athlete', 'Downhill Ski', 'Surf',
        'Mountain Bike', 'Base Jump');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Favabeans27', 'abc27@email.net', 'password', 'Susan', 'Storm',
        'Im not always invisible, thatts why i need people to film me', 'Ph2', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', NULL, 'Air Race');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Xwing28', 'abc28@email.net', 'password', 'Arya', 'Stark', 'A girl is noone, except for a great snowborder',
        'Sn1', 'Athlete', 'Snowboard', 'Water Ski', 'Skateboard,BMX,Mountain Bike', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('LoveMyDog29', 'user29@email.net', 'password', 'Pepper', 'Potts', 'catch me skydiving with my husband',
        'Ph2', 'Photographer', 'Downhill Ski', 'Surf', 'Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Terminator30', 'user30@email.net', 'password', 'Corvo', 'Attano', 'love to run around and jump off of things',
        'Su3', 'Athlete', 'snowmobile', 'Surf,Water Ski', 'BMX', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('DarkTower31', 'user10@email.net', 'password', 'Daniel', 'Goodman', 'Up for anything, lets carve!',
        'SkyDive2', 'Athlete', NULL, 'Surf,Water Ski', 'BMX,Skateboard', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('MotleyCrue32', 'abc11@email.net', 'password', 'Jason', 'Vorhees',
        'Not a big Fan of water sports, but lets hit the snow some time!', 'Ph1', 'Photographer', NULL, 'Kayak',
        'Parkour', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('CaptMarvel33', 'abc12@email.net', 'password', 'Tony', 'Stark',
        'genius, billionaire,Playboy philanthropist,What else do you need?', 'Su3', 'Athlete', NULL,
        'Surf,Water Ski', 'Skateboard,BMX,Mountain Bike', 'Sky Dive');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('BlackWidow34', 'abc13@email.net', 'password', 'Bruce', 'Dickenson',
        'I was born to rock and to fly through the sky!', 'Ph2', 'Photographer', 'Snowboard', 'Water Ski',
        'Skateboard', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('InvisibleWoman35', 'abc14@email.net', 'password', 'Thomas', 'Franklin',
        'Here for a good time, not a long time, into all kinds of extreme sports!', 'Su3', 'Athlete',
        'Downhill Ski', 'Surf', 'BMX', NULL);
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('NoOne36', 'abc15@email.net', 'password', 'Jamie', 'Lannister',
        'I love two things in this world, my family and my extreme sports', 'Ph3', 'Photographer',
        'Snowboard,Downhill Ski,snowmobile', 'Surf,Water Ski', 'Mountain Bike,Cliff Dive', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Rescue37', 'abc16@email.net', 'password', 'Robert', 'Baratheon',
        'The only thing I love more than agood hunt is a good carve! lets do it up!', 'Hg1', 'Athlete',
        'Snowboard', 'Water Ski', 'Parkour', 'Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dishonored38', 'abc17@email.net', 'password', 'Jaxon', 'Teller',
        'When I''m not riding my motorcycle, you can find me on the mountain!', 'Ph2', 'Photographer',
        'Downhill Ski', 'Surf,Paddleboard', 'Skateboard,BMX,Mountain Bike', 'Sky Dive,Hang Glide');
INSERT INTO USERS(username, email, password, first_name, last_name, description, photo, type, snow_sports, water_sports,
                  land_sports, air_sports)
VALUES ('Dgoodman19', 'abc18@email.net', 'password', 'Jean-luc', 'Picard',
        'I''m te best captain, better than kirk,Way more extreme', 'SkyDive1', 'Athlete', 'snowmobile',
        'Surf,Water Ski', 'Skateboard', 'Sky Dive');

# VENUES

INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Catamount', 'Hillsdale', 'NY',
        'Catamount, nestled in a picturesque bowl in the Berkshire Mountains, is a mountain for the entire family.',
        'SkRs1', 'Snowboard,Downhill Ski,Cross-Country Ski', NULL, 'Mountain Bike', NULL, 41.176399, -74.09256,
        'https://www.onthesnow.com/new-york/catamount-ski-ride-area/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Holiday Valley', 'Ellicotville', 'NY',
        'Holiday Valley has 53 trails marked 35 percent for beginners, 27 percent intermediates, and 38 percent advanced skiers.',
        'SkRs2', 'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 42.264314, -78.664821,
        'https://www.onthesnow.com/new-york/holiday-valley/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Whiteface Mountain', 'WIlmington', 'NY',
        'With the biggest vertical drop of the eastern ski resorts (3,429 feet),Whiteface, NY, offers 288 skiable acres serviced by 11 lifts, including one gondola.',
        'SkRs3', 'Snowboard,Downhill Ski,Cross-Country Ski', NULL, NULL, 'Hang Glide', 44.366984, -73.904448,
        'https://www.onthesnow.com/new-york/whiteface-mountain-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Belleayre Mountain', 'Highmount', 'NY',
        'Belleayre offers something for everybody, from skiing to snowboarding to cross-country skiing.', 'SkRs4',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 42.132086, -74.50558,
        'https://www.onthesnow.com/new-york/belleayre/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Gore Mountain', 'North Creek', 'NY',
        'Located in the Adirondacks, Gore Mountain is New York State’s largest ski and ride resort. Boasting a vertical drop of 2,537 feet and 446 accessible acres',
        'SkRs5', 'Snowboard,Downhill Ski,Cross-Country Ski', NULL, NULL, NULL, 43.67327, -74.007092,
        'https://www.onthesnow.com/new-york/gore-mountain/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Jack Frost', 'White Haven', 'PA', 'Cool resort in PA.', 'SkRs6', 'Snowboard,Downhill Ski', NULL, NULL, NULL,
        41.108388, -75.6515, 'https://www.onthesnow.com/pennsylvania/jack-frost/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Camelback Mountain', 'Tannersville', 'PA', 'Awesome ski resort in PA.', 'SkRs7',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 41.051092, -75.356211,
        'https://www.onthesnow.com/pennsylvania/camelback-mountain-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Campgaw Mountain', 'Mahwah', 'NJ', 'NJ ski resort, yes they exist.', 'SkRs8', 'Snowboard,Downhill Ski', NULL,
        NULL, NULL, 41.05656, -74.197295, 'https://www.onthesnow.com/new-jersey/campgaw-mountain/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mountain Creek Resort', 'Vernon', 'NJ', 'Another NJ ski resort,Who knew.', 'SkRs6',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, 'Mountain Bike', NULL, 41.189767, 74.505371,
        'https://www.onthesnow.com/new-jersey/mountain-creek-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mount Snow', 'West Dover', 'VT', 'RJs favorite resort.', 'SkRs4', 'Snowboard,Downhill Ski', NULL, NULL, NULL,
        42.959741, -72.919972, 'https://www.onthesnow.com/vermont/mount-snow/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Killington Resort', 'Killington', 'VT', 'Ski resort in vermont.', 'SkRs1',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 43.617347, -72.799372,
        'https://www.onthesnow.com/vermont/killington-resort/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Sundance Resort', 'Sundance', 'UT', 'Amazing ski resort in utah,Sean has been there.', 'SkRs2',
        'Snowboard,Downhill Ski', NULL, 'Rock Climb', 'Hang Glide,Base Jump', 40.393257, -111.586968,
        'https://www.onthesnow.com/utah/sundance/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Powder Mountain', 'Eden', 'UT', 'Amazing ski resort in utah,Sean has been there.', 'SkRs8',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, 'Hang Glide', 41.37759, -111.779676,
        'https://www.onthesnow.com/utah/powder-mountain/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Keystone', 'Keystone', 'CO', 'Ridiculous Ski Resort in Colorado.', 'SkRs5', 'Snowboard,Downhill Ski', NULL,
        NULL, NULL, 39.608136, -105.943562, 'https://www.onthesnow.com/colorado/keystone/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Aspen/ SNOWMASS', 'ASPEN', 'CO', 'High end ski resort that everyone knows of but cant afford.', 'SkRs1',
        'Snowboard,Downhill Ski,Snowmobile,Cross-Country Ski', NULL, NULL, NULL, 39.205417, -106.947842,
        'https://www.onthesnow.com/colorado/aspen-snowmass/ski-resort.html');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Devil''s Tower', 'Devils Tower', 'WY', 'Universally known landmark.', 'DT', NULL, NULL, 'Rock Climb',
        'Base Jump', 44.588426, -104.698349, 'https://www.mountainproject.com/area/105714267/devils-tower');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Grand Teton', 'Alta', 'WY', 'Amazing mountain to climb. Beautiful scenery.', 'GT', NULL, NULL, 'Rock Climb',
        'Base Jump', 43.742851, -110.796967,
        'https://www.mountainproject.com/area/105802912/grand-teton-national-park');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mount Rainier', 'Mt Rainier', 'WA', 'Stands alone, majestically.', 'MR', NULL, NULL, 'Rock Climb', 'Base Jump',
        46.852101, -121.760366, 'https://www.mountainproject.com/area/105877031/mount-rainier');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Mount Katahdin', 'Piscataquis', 'ME', 'Part of the applachian trail.', 'MK', NULL, NULL, 'Rock Climb', NULL,
        45.904011, -68.921694, 'https://www.mountainproject.com/area/105949051/katahdin');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Pikes Peak', 'Pikes Peak', 'CO', 'Why climb if you can drive or ride?', 'PP', NULL, NULL,
        'Mountain Bike,Rock Climb', 'Hang Glide,Base Jump', 38.840619, -105.042375,
        'https://www.mountainproject.com/area/106201866/pikes-peak');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Spring Lake Beach', 'Spring Lake', 'NJ', 'Some random NJ beach.', 'Be1', NULL, 'Surf,Wakeboard', NULL, NULL,
        40.151294, -74.021604, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Belmar Beach', 'Belmar', 'NJ', 'Some random NJ beach.', 'Be2', NULL, 'Surf,Kayak,Wakeboard,Parasail', NULL,
        NULL, 40.182549, -74.010354, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Avon Beach', 'Avon', 'NJ', 'Some random NJ beach.', 'Be3', NULL, 'Surf,Kayak,Wakeboard', NULL, NULL, 40.194072,
        -74.008168, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Manasquan Beach', 'Manasquan', 'NJ', 'Some random NJ beach.', 'Be1', NULL, 'Surf,Wakeboard,Parasail', NULL,
        NULL, 40.110715, -74.033019, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Manasquan inlet', 'Manasquan', 'NJ', 'Some random NJ beach.', 'Be2', NULL, 'Water Ski,Kayak,Paddleboard', NULL,
        NULL, 40.104929, -74.037292, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Seagirt Beach', 'Seagirt', 'NJ', 'Some random NJ beach.', 'Be3', NULL, 'Surf,Wakeboard', NULL, NULL, 40.135346,
        -74.026757, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Asburry Beach', 'Asburry', 'NJ', 'Some random NJ beach.', 'Be4', NULL, 'Surf,Wakeboard,Parasail', NULL, NULL,
        40.222815, -73.99849, 'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Waikiki Beach', 'Waikiki', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be1', NULL,
        'Surf,Water Ski', NULL, NULL, 21.276486, -157.827866,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Sunset beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be2', NULL, 'Surf,Wakeboard',
        NULL, 'Air Race', 21.674231, -158.040712,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Waimea Bay', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be3', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 21.640943, -158.063304,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ehukai Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be4', NULL, 'Surf,Wakeboard',
        NULL, NULL, 21.665847, -158.050612,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Haleiwa Alii Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be5', NULL,
        'Surf,Wakeboard,Parasail', 'Cliff Dive', NULL, 21.592923, -158.109451,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Haleiwa Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be1', NULL, 'Surf,Wakeboard',
        'Cliff Dive', NULL, 21.599308, -158.10369,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Chun''s Reef', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be2', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 21.623339, -158.081172,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ke Waena Beach', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be3', NULL, 'Surf,Wakeboard',
        NULL, NULL, 21.660497, -158.056624,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Turtle Bay', 'Oahu', 'HI', 'Some radom HI beach. Good sufing here though.', 'Be4', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 21.705876, -157.996371,
        'https://www.surfline.com/surf-forecasts/new-jersey/58581a836630e24c44878fda');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Black''s Beach', 'San Diego', 'CA', 'Cali beach.', 'Be5', NULL, 'Surf,Wakeboard', NULL, NULL, 32.887505,
        -117.253329, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ocean City Beach', 'Ocean City', 'MD', 'Who goes to maryland to surf?', 'Be1', NULL, 'Surf,Wakeboard,Parasail',
        NULL, NULL, 38.33271, -75.0829, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Windansea Beach', 'San Diego', 'CA', 'Another Cali Beach.', 'Be2', NULL, 'Surf,Wakeboard', NULL, NULL,
        32.829889, -117.280952, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Cocoa Beach', 'Cape Canaveral', 'FL', 'Intergalactically famous beach in florida.', 'Be3', NULL,
        'Surf,Wakeboard,Parasail', NULL, NULL, 28.319259, -80.607689, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Lake Buena Vista', 'Orlando', 'FL', 'Disney famous lake.', 'Lk1', NULL,
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', NULL, NULL, 28.399563, -81.545967, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Lake Powell', 'Lake Powell', 'UT', 'Just how big is this thing. Great place to party.', 'Ka1', 'Snowmobile',
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', 'Rock Climb,Cliff Dive', 'Air Race', 37.029312, -111.326004,
        NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Greenwood Lake', 'Greenwood Lake', 'NY', 'Some lake in New York.', 'Lk2', NULL,
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', 'Rock Climb,Cliff Dive', 'Air Race', 41.213795, -74.301314,
        NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Lake Mead', 'Lake Mead', 'NV', 'Party central, not as big as powell though. Hoover dam anyone?', 'Lk3',
        'Snowmobile', 'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', 'Rock Climb,Cliff Dive', 'Air Race', 36.14439,
        -114.427312, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Union Lake', 'Millville', 'NJ', 'NJ lake, good times to be had.', 'Lk4', 'Snowmobile',
        'Water Ski,Kayak,Paddleboard,Parasail,Kite Surf', NULL, NULL, 39.412838, -75.060835, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Burnside Skate Park', 'Portland', 'OR', 'Bob''s Playgorund', 'Ska2', NULL, NULL, 'Skateboard,BMX,Parkour',
        NULL, 45.522946, -122.663655, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Skate Lab', 'Atlantic Beach', 'FL', 'Indoor jam sessions for days.', 'Ska1', NULL, NULL,
        'Skateboard,BMX,Parkour', NULL, 30.331846, -81.403374, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Denver Skate Park', 'Denver', 'CO', 'Fun in the sun.', 'SkPk1', NULL, NULL, 'Skateboard,BMX,Parkour', NULL,
        39.759566, -105.002511, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('David Armstrong Extreme Park', 'Lousiville', 'KY', 'Great place to skate.', 'Ska2', NULL, NULL,
        'Skateboard,BMX,Parkour', NULL, 38.257057, -85.740185, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Dreamland Skate Park', 'Lincoln City', 'OR', 'Amazing place to skate.', 'SkPk1', NULL, NULL,
        'Skateboard,BMX,Parkour', NULL, 44.982601, -124.0045, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Ray''s MTB Park', 'Cleveland', 'OH', 'Awesome BMX track', 'BMXT1', NULL, NULL, 'BMX', NULL, 41.454896,
        -81.752677, 'www.raysmtb.com');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Chula Vista', 'San Diego', 'CA', 'Insane runs in the desert.', 'BMXT2', NULL, NULL, 'BMX', NULL, 32.630195,
        -116.937156, 'www.chulavistabmx.com');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Egg Harbor Township BMX Racing', 'EHT', 'NJ', 'Great BMX track', 'BMXT1', NULL, NULL, 'BMX', NULL, 39.368482,
        -74.626909, 'www.ehtbmxracing.org');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Orlando BMX', 'Orlando', 'FL', 'Great outdoor BMX track.', 'BMXT2', NULL, NULL, 'BMX', NULL, 28.558288,
        -81.443244, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('The Flow', 'Colombus', 'OH', 'Flowingly smooth BMX track', 'BMXT1', NULL, NULL, 'Skateboard,BMX,Parkour', NULL,
        39.955498, -83.107935, NULL);
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Pensylvania Skydiving Center', 'Hazleton', 'PA', 'Cant go wrong here.', 'AF1', NULL, NULL, NULL,
        'Sky Dive,Air Race', 40.988158, -75.992654, 'http://paskydive.com/');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Sky Dive Key West', 'Summerland Key', 'FL', 'Great views, good time.', 'SkyDive1', NULL, NULL, NULL,
        'Sky Dive,Air Race', 24.648312, -81.573498, 'https://skydivekeywest.com/');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Alaska SkyDive Center', 'Palmer', 'AK', 'Amazing experience.', 'SkyDive2', NULL, NULL, NULL,
        'Sky Dive,Air Race', 61.601329, -149.091718, 'http://alaskaskydivecenter.com/');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Skydive Hawaii', 'Waialua', 'HI', 'Beautiful views,  fun time.', 'AF1', NULL, NULL, NULL, 'Sky Dive,Air Race',
        21.578305, -158.182364, 'http://www.skydivehawaii.com/');
INSERT INTO VENUES(venue_name, City, State, about, Picture, Snow_sports, Water_sports, land_sports, air_sports,
                   lattitude, longitude, url)
VALUES ('Skydive Zion', 'Hurricane', 'UT', 'Wow... Awesome time.', 'SkyDive1', NULL, NULL, NULL, 'Sky Dive,Air Race',
        37.141208, -113.304019, 'http://www.skydivezion.com/');

INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve1', 1, 1, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0,
        'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve2', 2, 6, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve3', 3, 6, 'looking for some downhill skiing', 'open', 6, 2, '2019-07-03', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve4', 4, 1, 'lets get some snowboarding in!', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve5', 5, 7, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve6', 5, 7, 'let''s have some fun on the slopes today!', 'buddy', 8, 4, '2019-03-12', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve7', 6, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve8', 7, 1, 'anyone wanna shed?', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve9', 8, 11, 'slopes are calling my name! join me!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve10', 9, 13, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve11', 13, 2, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve12', 13, 2, 'lets get some snowboarding in!', 'buddy', 8, 4, '2019-03-12', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve13', 14, 13, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve14', 15, 3, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve15', 16, 3, 'anyone wanna shed?', 'open', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve16', 17, 11, 'looking for some downhill skiing', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve17', 18, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve18', 19, 4, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve19', 20, 8, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve20', 21, 8, 'let''s have some fun on the slopes today!', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve21', 22, 10, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve22', 23, 12, 'trying to get a skiing group together, hmu!', 'buddy', 6, 2, '2019-07-03', 0,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve23', 24, 12, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve24', 25, 4, 'lets shred!', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve25', 26, 14, 'looking for some downhill skiing', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve26', 27, 14, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve27', 27, 5, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve28', 28, 5, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve29', 29, 15, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve30', 30, 15, 'who wants to sled?', 'buddy', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve31', 1, 21, 'waves are gonna be great!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve32', 2, 41, 'who''s down for some water skiing?', 'buddy', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve33', 3, 26, 'looking for some sweet barrels!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve34', 4, 21, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve35', 5, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve36', 5, 41, 'who''s down for some water skiing?', 'buddy', 3, 3, '2019-05-22', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve37', 6, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve38', 7, 43, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve39', 8, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve40', 9, 43, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve41', 10, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve42', 11, 41, 'calm day out there, lets get some kayaking in', 'buddy', 6, 2, '2019-07-03', 0, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve43', 11, 41, 'lets paddle arround for a bit, maybe we''ll see some dolphins', 'open', 5, 3, '2018-06-04',
        1, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve44', 12, 24, 'lets shred!', 'buddy', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve45', 13, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve46', 14, 22, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Parasail');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve47', 14, 21, 'lets shred!', 'open', 8, 2, '2019-08-19', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve48', 15, 27, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve49', 16, 27, 'lets shred!', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve50', 17, 26, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve51', 18, 28, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve52', 19, 28, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve53', 20, 22, 'waves are calling me!', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve54', 21, 29, 'lets shred!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve55', 22, 41, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve56', 23, 23, 'lets paddle out!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve57', 24, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve58', 25, 41, 'gonna have a great time', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve59', 26, 24, 'let''s hit the lineup', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve60', 27, 29, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve61', 28, 42, 'killer waves', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve62', 29, 23, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Wakeboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve63', 30, 26, 'barrel time', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve64', 1, 46, 'got a lot planned for this one', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve65', 2, 46, 'lets hit the sake park', 'open', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve66', 3, 47, 'get those bikes ready!', 'buddy', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve67', 4, 47, 'looking to shoot some cool parkour videos', 'open', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve68', 6, 48, 'got a lot planned for this one', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve69', 7, 48, 'get those boards ready, gonna have some fun', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve70', 7, 49, 'let''s get some good footage', 'buddy', 8, 4, '2019-03-12', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve71', 8, 49, 'lets ride, all are welcome', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve72', 10, 50, 'got a lot planned for this one', 'buddy', 6, 2, '2019-02-15', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve73', 10, 50, 'got a lot planned for this one', 'open', 5, 2, '2019-04-04', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve74', 11, 46, 'looking to shoot some cool parkour videos', 'buddy', 3, 3, '2019-05-22', 0, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve75', 12, 9, 'mounatin is gonna be fun, bring your bike', 'open', 6, 2, '2019-02-15', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve76', 12, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve77', 13, 48, 'do a kickflip! - tony hawk', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve78', 14, 49, 'got some cool stuff planned', 'buddy', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve79', 15, 32, 'bring a redbull and let''s do this!', 'open', 3, 3, '2019-05-22', 0, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve80', 16, 46, 'looking to shoot some cool parkour videos', 'buddy', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve81', 17, 51, 'lets ride, all are welcome', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve82', 18, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve83', 19, 47, 'got some cool stuff planned', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve84', 20, 42, 'looking for some good climbing', 'buddy', 5, 2, '2019-04-04', 1, 'Rock Climb');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve85', 21, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve86', 22, 32, 'let''s go jum off of some cliffs!', 'buddy', 5, 2, '2019-04-04', 1, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve87', 23, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve88', 24, 46, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve89', 25, 47, 'get those bikes ready!', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve90', 26, 9, 'get those bikes ready!', 'buddy', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve91', 28, 9, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve92', 29, 48, 'let''s shred!', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve93', 30, 48, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve94', 1, 56, 'who''s down for some sky diving?', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve95', 2, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve96', 3, 56, 'green light! go go go!', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve97', 4, 57, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve98', 4, 57, 'lets jump!', 'buddy', 8, 2, '2019-01-09', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve99', 8, 58, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve100', 9, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 3, 3, '2019-05-22', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve101', 9, 11, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve102', 10, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve103', 11, 58, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve104', 12, 59, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve105', 15, 11, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve106', 16, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve107', 17, 59, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve108', 18, 60, 'green light! go go go!', 'buddy', 8, 3, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve109', 19, 16, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve110', 20, 57, 'who''s down to air rae?', 'buddy', 8, 2, '2019-08-19', 0, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve111', 21, 18, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve112', 22, 60, 'lets jump!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve113', 23, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve114', 24, 58, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve115', 25, 58, 'who''s down for some sky diving?', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve116', 26, 18, 'been waiting for some good base jumping, join me!', 'buddy', 8, 2, '2019-08-19', 0,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve117', 27, 57, 'who''s down to air race?', 'open', 8, 4, '2019-03-12', 1, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve118', 29, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 4, '2019-03-11', 1,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve119', 29, 13, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve120', 30, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve121', 1, 1, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0,
        'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve122', 2, 6, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve123', 3, 6, 'looking for some downhill skiing', 'open', 6, 2, '2019-07-03', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve124', 4, 1, 'lets get some snowboarding in!', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve125', 5, 7, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve126', 5, 7, 'let''s have some fun on the slopes today!', 'buddy', 8, 4, '2019-03-12', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve127', 6, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve128', 7, 1, 'anyone wanna shed?', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve129', 8, 11, 'slopes are calling my name! join me!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve130', 9, 13, 'anyone wanna drop some hills?', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve131', 13, 2, 'trying to get a good snowboarding sesh in', 'open', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve132', 13, 2, 'lets get some snowboarding in!', 'buddy', 8, 4, '2019-03-12', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve133', 14, 13, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve134', 15, 3, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve135', 16, 3, 'anyone wanna shed?', 'open', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve136', 17, 11, 'looking for some downhill skiing', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve137', 18, 9, 'who wants to sled?', 'open', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve138', 19, 4, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve139', 20, 8, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve140', 21, 8, 'let''s have some fun on the slopes today!', 'buddy', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve141', 22, 10, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve142', 23, 12, 'trying to get a skiing group together, hmu!', 'buddy', 6, 2, '2019-07-03', 0,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve143', 24, 12, 'trying to get a skiing group together, hmu!', 'open', 6, 2, '2019-02-15', 1,
        'Cross-Country Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve144', 25, 4, 'lets shred!', 'buddy', 6, 2, '2019-07-03', 0, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve145', 26, 14, 'looking for some downhill skiing', 'open', 6, 2, '2019-02-15', 1, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve146', 27, 14, 'got a lot planned for this one', 'buddy', 6, 2, '2019-07-03', 0,
        'Downhill Ski,snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve147', 27, 5, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Snowboard,Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve148', 28, 5, 'trying to get a good snowboarding sesh in', 'buddy', 6, 2, '2019-02-15', 1, 'Snowboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve149', 29, 15, 'let''s have some fun on the slopes today!', 'open', 6, 2, '2019-07-03', 0, 'Downhill Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve150', 30, 15, 'who wants to sled?', 'buddy', 6, 2, '2019-02-15', 1, 'snowmobile');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve151', 1, 21, 'waves are gonna be great!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve152', 2, 41, 'who''s down for some water skiing?', 'buddy', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve153', 3, 26, 'looking for some sweet barrels!', 'open', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve154', 4, 21, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve155', 5, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve156', 5, 41, 'who''s down for some water skiing?', 'buddy', 3, 3, '2019-05-22', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve157', 6, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve158', 7, 43, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve159', 8, 42, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve160', 9, 43, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve161', 10, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve162', 11, 41, 'calm day out there, lets get some kayaking in', 'buddy', 6, 2, '2019-07-03', 0, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve163', 11, 41, 'lets paddle arround for a bit, maybe we''ll see some dolphins', 'open', 5, 3, '2018-06-04',
        1, 'Kayak');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve164', 12, 24, 'lets shred!', 'buddy', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve165', 13, 25, 'who''s down for some water skiing?', 'open', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve166', 14, 22, 'got a lot planned for this one', 'buddy', 7, 3, '2019-08-08', 0, 'Surf,Parasail');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve167', 14, 21, 'lets shred!', 'open', 8, 2, '2019-08-19', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve168', 15, 27, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve169', 16, 27, 'lets shred!', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve170', 17, 26, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Paddleboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve171', 18, 28, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve172', 19, 28, 'who''s down for some water skiing?', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve173', 20, 22, 'waves are calling me!', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve174', 21, 29, 'lets shred!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve175', 22, 41, 'who''s down for some water skiing?', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve176', 23, 23, 'lets paddle out!', 'buddy', 5, 3, '2018-06-04', 1, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve177', 24, 27, 'got a lot planned for this one', 'open', 7, 3, '2019-08-08', 0, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve178', 25, 41, 'gonna have a great time', 'buddy', 5, 3, '2018-06-04', 1, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve179', 26, 24, 'let''s hit the lineup', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve180', 27, 29, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve181', 28, 42, 'killer waves', 'open', 7, 3, '2019-08-08', 0, 'Water Ski');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve182', 29, 23, 'got a lot planned for this one', 'buddy', 5, 3, '2018-06-04', 1, 'Surf,Wakeboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve183', 30, 26, 'barrel time', 'open', 7, 3, '2019-08-08', 0, 'Surf');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve184', 1, 46, 'got a lot planned for this one', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve185', 2, 46, 'lets hit the sake park', 'open', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve186', 3, 47, 'get those bikes ready!', 'buddy', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve187', 4, 47, 'looking to shoot some cool parkour videos', 'open', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve188', 6, 48, 'got a lot planned for this one', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve189', 7, 48, 'get those boards ready, gonna have some fun', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve190', 7, 49, 'let''s get some good footage', 'buddy', 8, 4, '2019-03-12', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve191', 8, 49, 'lets ride, all are welcome', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve192', 10, 50, 'got a lot planned for this one', 'buddy', 6, 2, '2019-02-15', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve193', 10, 50, 'got a lot planned for this one', 'open', 5, 2, '2019-04-04', 1, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve194', 11, 46, 'looking to shoot some cool parkour videos', 'buddy', 3, 3, '2019-05-22', 0, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve195', 12, 9, 'mounatin is gonna be fun, bring your bike', 'open', 6, 2, '2019-02-15', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve196', 12, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve197', 13, 48, 'do a kickflip! - tony hawk', 'open', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve198', 14, 49, 'got some cool stuff planned', 'buddy', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve199', 15, 32, 'bring a redbull and let''s do this!', 'open', 3, 3, '2019-05-22', 0, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve200', 16, 46, 'looking to shoot some cool parkour videos', 'buddy', 5, 2, '2019-04-04', 1, 'Parkour');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve201', 17, 51, 'lets ride, all are welcome', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve202', 18, 47, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve203', 19, 47, 'got some cool stuff planned', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve204', 20, 42, 'looking for some good climbing', 'buddy', 5, 2, '2019-04-04', 1, 'Rock Climb');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve205', 21, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'BMX,Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve206', 22, 32, 'let''s go jum off of some cliffs!', 'buddy', 5, 2, '2019-04-04', 1, 'Cliff Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve207', 23, 46, 'got a lot planned for this one', 'open', 3, 3, '2019-05-22', 0, 'Skateboard,BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve208', 24, 46, 'lets shred!', 'buddy', 5, 2, '2019-04-04', 1, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve209', 25, 47, 'get those bikes ready!', 'open', 3, 3, '2019-05-22', 0, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve210', 26, 9, 'get those bikes ready!', 'buddy', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve211', 28, 9, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'Mountain Bike');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve212', 29, 48, 'let''s shred!', 'buddy', 3, 3, '2019-05-22', 0, 'Skateboard');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve213', 30, 48, 'get those bikes ready!', 'open', 5, 2, '2019-04-04', 1, 'BMX');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve214', 1, 56, 'who''s down for some sky diving?', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve215', 2, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve216', 3, 56, 'green light! go go go!', 'buddy', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve217', 4, 57, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve218', 4, 57, 'lets jump!', 'buddy', 8, 2, '2019-01-09', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve219', 8, 58, 'who''s down for some sky diving?', 'open', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve220', 9, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 3, 3, '2019-05-22', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve221', 9, 11, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve222', 10, 3, 'break out those hang gliders! gonna be fun!', 'buddy', 8, 2, '2019-08-19', 0, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve223', 11, 58, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve224', 12, 59, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve225', 15, 11, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve226', 16, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve227', 17, 59, 'lets jump!', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve228', 18, 60, 'green light! go go go!', 'buddy', 8, 3, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve229', 19, 16, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve230', 20, 57, 'who''s down to air rae?', 'buddy', 8, 2, '2019-08-19', 0, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve231', 21, 18, 'been waiting for some good base jumping, join me!', 'open', 8, 4, '2019-03-12', 1,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve232', 22, 60, 'lets jump!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve233', 23, 3, 'gonna be nice weather for some hang gliding!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve234', 24, 58, 'green light! go go go!', 'buddy', 8, 2, '2019-08-19', 0, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve235', 25, 58, 'who''s down for some sky diving?', 'open', 8, 4, '2019-03-12', 1, 'Sky Dive');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve236', 26, 18, 'been waiting for some good base jumping, join me!', 'buddy', 8, 2, '2019-08-19', 0,
        'Base Jump');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve237', 27, 57, 'who''s down to air race?', 'open', 8, 4, '2019-03-12', 1, 'Air Race');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve238', 29, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 4, '2019-03-11', 1,
        'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve239', 29, 13, 'break out those hang gliders! gonna be fun!', 'open', 8, 4, '2019-03-12', 1, 'Hang Glide');
INSERT INTO CARVES(name, creator, venue, description, type, max_athletes, max_photo, date, completed, sports)
VALUES ('carve240', 30, 13, 'gonna be nice weather for some hang gliding!', 'buddy', 8, 2, '2019-08-19', 0,
        'Hang Glide');

INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (1, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (1, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (1, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (1, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (1, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (2, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (2, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (2, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (2, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (2, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (3, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (3, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (3, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (3, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (3, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (4, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (4, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (4, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (4, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (4, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (5, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (5, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (5, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (5, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (5, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (6, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (6, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (6, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (6, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (6, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (7, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (7, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (7, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (7, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (7, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (8, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (8, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (8, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (8, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (8, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (9, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (9, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (9, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (9, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (9, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (10, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (10, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (10, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (10, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (10, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (11, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (11, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (11, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (12, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (12, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (12, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (13, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (13, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (14, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (14, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (15, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (15, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (16, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (16, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (16, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (17, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (17, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (17, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (18, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (18, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (19, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (19, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (20, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (20, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (21, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (21, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (22, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (22, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (22, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (22, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (23, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (23, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (23, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (24, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (24, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (24, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (25, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (25, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (25, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (26, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (26, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (27, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (27, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (27, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (28, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (28, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (28, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (29, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (29, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (29, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (30, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (30, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (30, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (31, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (31, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (32, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (32, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (32, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (32, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (32, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (32, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (33, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (33, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (33, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (33, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (33, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (34, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (34, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (34, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (34, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (34, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (35, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (35, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (35, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (35, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (35, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (36, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (36, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (36, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (36, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (36, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (37, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (37, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (37, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (37, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (37, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (38, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (38, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (38, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (38, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (38, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (39, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (39, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (39, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (39, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (39, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (40, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (40, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (40, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (40, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (40, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (42, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (43, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (44, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (45, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (46, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (47, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (48, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (49, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (50, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (51, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (52, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (53, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (54, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (55, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (56, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (57, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (58, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (59, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (60, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (61, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (62, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (63, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (64, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (65, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (66, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (67, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (68, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (69, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (70, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (71, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (72, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (73, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (74, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (75, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (76, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (77, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (78, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (79, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (80, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (81, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (82, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (83, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (84, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (85, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (86, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (87, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (88, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (89, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (90, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (91, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (92, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (93, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (94, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (95, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (96, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (97, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (98, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (99, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (100, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (101, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (102, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (103, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (104, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (105, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (106, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (107, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (108, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (109, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (110, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (111, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (112, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (113, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (114, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (115, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (116, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (117, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (118, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (119, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (120, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (121, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (122, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (123, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (124, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (125, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (126, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (127, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (128, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (129, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (130, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (131, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (132, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (133, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (134, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (135, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (136, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (137, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (138, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (139, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (140, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (141, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (142, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (143, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (144, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (145, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (146, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (147, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (148, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (149, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (150, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (151, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (152, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (153, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (154, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (155, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (156, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (157, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (158, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (159, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (160, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (161, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (162, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (163, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (164, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (165, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (166, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (167, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (168, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (169, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (170, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (171, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (172, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (173, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (174, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (175, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (176, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (177, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (178, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (179, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (180, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (181, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (182, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (183, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (184, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (185, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (186, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (187, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (188, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (189, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (190, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (191, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (192, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (193, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (194, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (195, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (196, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (197, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (198, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (199, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (200, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (201, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (202, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (203, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (204, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (205, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (206, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (207, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (208, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (209, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (210, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (211, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (212, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (213, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (214, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (215, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (216, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (217, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (218, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (219, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (220, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (221, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (222, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (223, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (224, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (225, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (226, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (227, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (228, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (229, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (230, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (231, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (232, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (233, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (234, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (235, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (236, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (237, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (238, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (239, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (240, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (42, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (43, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (44, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (45, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (46, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (47, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (48, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (49, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (50, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (51, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (52, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (53, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (54, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (55, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (56, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (57, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (58, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (59, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (60, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (61, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (62, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (63, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (64, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (65, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (66, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (67, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (68, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (69, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (70, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (71, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (72, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (73, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (74, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (75, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (76, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (77, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (78, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (79, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (80, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (81, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (82, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (83, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (84, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (85, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (86, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (87, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (88, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (89, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (90, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (91, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (92, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (93, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (94, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (95, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (96, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (97, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (98, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (99, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (100, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (101, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (102, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (103, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (104, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (105, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (106, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (107, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (108, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (109, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (110, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (111, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (112, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (113, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (114, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (115, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (116, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (117, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (118, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (119, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (120, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (121, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (122, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (123, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (124, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (125, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (126, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (127, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (128, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (129, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (130, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (131, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (132, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (133, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (134, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (135, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (136, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (137, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (138, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (139, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (140, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (141, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (142, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (143, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (144, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (145, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (146, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (147, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (148, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (149, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (150, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (151, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (152, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (153, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (154, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (155, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (156, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (157, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (158, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (159, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (160, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (161, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (162, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (163, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (164, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (165, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (166, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (167, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (168, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (169, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (170, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (171, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (172, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (173, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (174, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (175, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (176, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (177, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (178, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (179, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (180, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (181, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (182, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (183, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (184, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (185, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (186, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (187, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (188, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (189, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (190, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (191, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (192, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (193, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (194, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (195, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (196, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (197, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (198, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (199, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (200, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (201, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (202, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (203, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (204, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (205, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (206, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (207, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (208, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (209, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (210, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (211, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (212, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (213, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (214, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (215, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (216, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (217, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (218, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (219, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (220, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (221, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (222, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (223, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (224, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (225, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (226, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (227, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (228, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (229, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (230, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (231, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (232, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (233, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (234, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (235, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (236, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (237, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (238, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (239, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (240, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (41, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (42, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (43, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (44, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (45, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (46, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (47, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (48, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (49, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (50, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (51, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (52, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (53, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (54, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (55, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (56, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (57, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (58, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (59, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (60, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (61, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (62, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (63, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (64, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (65, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (66, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (67, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (68, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (69, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (70, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (71, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (72, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (73, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (74, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (75, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (76, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (77, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (78, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (79, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (80, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (81, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (82, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (83, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (84, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (85, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (86, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (87, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (88, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (89, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (90, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (91, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (92, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (93, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (94, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (95, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (96, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (97, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (98, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (99, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (100, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (101, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (102, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (103, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (104, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (105, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (106, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (107, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (108, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (109, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (110, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (111, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (112, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (113, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (114, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (115, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (116, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (117, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (118, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (119, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (120, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (121, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (122, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (123, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (124, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (125, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (126, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (127, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (128, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (129, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (130, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (131, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (132, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (133, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (134, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (135, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (136, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (137, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (138, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (139, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (140, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (141, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (142, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (143, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (144, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (145, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (146, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (147, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (148, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (149, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (150, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (151, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (152, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (153, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (154, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (155, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (156, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (157, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (158, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (159, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (160, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (161, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (162, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (163, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (164, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (165, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (166, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (167, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (168, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (169, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (170, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (171, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (172, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (173, 14, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (174, 16, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (175, 18, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (176, 22, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (177, 24, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (178, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (179, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (180, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (181, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (182, 28, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (183, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (184, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (185, 15, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (186, 16, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (187, 11, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (188, 12, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (189, 13, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (190, 14, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (191, 9, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (192, 8, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (193, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (194, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (195, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (196, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (197, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (198, 20, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (199, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (200, 25, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (201, 27, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (202, 29, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (203, 30, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (204, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (205, 26, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (206, 21, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (207, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (208, 24, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (209, 25, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (210, 19, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (211, 18, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (212, 15, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (213, 13, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (214, 12, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (215, 11, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (216, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (217, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (218, 27, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (219, 7, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (220, 17, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (221, 1, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (222, 3, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (223, 9, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (224, 28, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (225, 29, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (226, 30, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (227, 23, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (228, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (229, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (230, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (231, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (232, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (233, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (234, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (235, 4, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (236, 5, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (237, 6, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (238, 2, 'photographer');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (239, 3, 'athlete');
INSERT INTO CARVE_ATTENDEES(carve, user, type)
VALUES (240, 4, 'athlete');

INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 1, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 2, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 3, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 4, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 5, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 6, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 7, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 8, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 1, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 2, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 3, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 4, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 5, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 6, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 7, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 8, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 9, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 1, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 2, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 3, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 5, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 8, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 14, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 18, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 22, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 26, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 111, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 240, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 200, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 100, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 50, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 21, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 58, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 68, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 99, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 77, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 161, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 200, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 202, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 205, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 209, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 211, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 220, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 221, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 225, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 229, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 232, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 131, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 138, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 156, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 145, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 148, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 191, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 198, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 201, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 203, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 205, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 221, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 200, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 131, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 138, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 198, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 228, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 112, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 209, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 211, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 115, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 239, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 121, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 100, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 138, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 165, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 145, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 162, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 191, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 45, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 98, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 77, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 66, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 22, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 11, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 66, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 98, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 11, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 45, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 165, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 239, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 1, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 2, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 3, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 4, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 5, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 6, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 7, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 8, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 9, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 10, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 11, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 12, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 13, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 14, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 15, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 16, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 17, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 18, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 19, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 20, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 21, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 22, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 23, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 24, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 25, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 26, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 27, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 28, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 29, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 30, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 31, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 32, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 33, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 34, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 35, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 36, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 37, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 38, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 39, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 40, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 41, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 42, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 43, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 44, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 45, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 46, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 47, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 48, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 49, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 50, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 51, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 52, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 53, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 54, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 55, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 56, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 57, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 58, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 59, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 60, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 61, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 62, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 63, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 64, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 65, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 66, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 67, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 68, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 69, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 70, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 71, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 72, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 73, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 74, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 75, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 76, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 77, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 78, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 79, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 80, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 81, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 82, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 83, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 84, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 85, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 86, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 87, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 88, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 89, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 90, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 91, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 92, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 93, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 94, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 95, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 96, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 97, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 98, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 99, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 100, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 101, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 102, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 103, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 104, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 105, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 106, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 107, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 108, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 109, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 110, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 111, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 112, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 113, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 114, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 115, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 116, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 117, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 118, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 119, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 120, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 121, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 122, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 123, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 124, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 125, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 126, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 127, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 128, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 129, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 130, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 131, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 132, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 133, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 134, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 135, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 136, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 137, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 138, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 139, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 140, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 141, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 142, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 143, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 144, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 145, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 146, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 147, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 148, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 149, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 150, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 151, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 152, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 153, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 154, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 155, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 156, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 157, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 158, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 159, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 160, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 161, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 162, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 163, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 164, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 165, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 166, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 167, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 168, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 169, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 170, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 171, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 172, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 173, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 174, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 175, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 176, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 177, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 178, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 179, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 180, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 181, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 182, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 183, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 184, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 185, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 186, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 187, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 188, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 189, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 190, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 191, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 192, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 193, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 194, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 195, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 196, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 197, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 198, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 199, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 200, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 201, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 202, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 203, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 204, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 205, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 206, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 207, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 208, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 209, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 210, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 211, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 212, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 213, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 214, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 215, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 216, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 217, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 218, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 219, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 220, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 221, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 222, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 223, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 224, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 225, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 226, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 227, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 228, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 229, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 230, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 231, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 232, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 233, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 234, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 235, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 236, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 237, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 238, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 239, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 240, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 1, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 2, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 3, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 4, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 5, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 6, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 7, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 8, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 9, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 10, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 11, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 12, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 13, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 14, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 15, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 16, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 17, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 18, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 19, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 20, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 21, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 22, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 23, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 24, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 25, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 26, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 27, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 28, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 29, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 30, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 31, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 32, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 33, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 34, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 35, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 36, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 37, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 38, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 39, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 40, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 41, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 42, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 43, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 44, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 45, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 46, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 47, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 48, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 49, 'carve comment something witty goes here');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 50, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 51, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 52, 'It is going to be an amazing experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 53, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 54, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 55, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 56, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 57, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 58, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 59, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 60, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 61, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 62, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 63, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 64, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 65, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 66, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 67, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 68, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 69, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 70, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 71, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 72, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 73, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 74, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 75, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 76, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 77, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 78, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 79, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 80, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 81, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 82, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 83, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 84, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 85, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 86, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 87, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 88, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 89, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 90, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 91, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 92, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 93, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 94, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 95, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 96, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 97, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 98, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 99, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 100, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 101, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 102, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 103, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 104, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 105, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 106, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 107, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 108, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 109, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 110, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 111, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 112, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 113, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 114, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 115, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 116, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 117, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 118, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 119, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 120, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 121, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 122, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 123, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 124, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 125, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 126, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 127, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 128, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 129, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 130, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 131, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 132, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 133, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 134, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 135, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 136, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 137, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 138, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 139, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 140, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 141, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 142, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 143, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 144, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 145, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 146, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 147, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 148, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 149, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 150, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 151, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 152, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 153, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 154, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 155, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 156, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 157, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 158, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 159, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 160, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 161, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 162, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 163, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 164, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 165, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 166, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 167, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 168, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 169, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 170, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 171, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 172, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 173, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 174, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 175, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 176, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 177, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 178, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 179, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 180, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 181, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 182, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 183, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 184, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 185, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 186, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 187, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 188, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 189, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 190, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 191, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 192, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 193, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 194, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 195, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 196, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 197, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 198, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 199, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 200, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 201, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 202, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 203, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 204, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 205, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 206, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 207, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 208, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 209, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 210, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 211, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 212, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 213, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 214, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 215, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 216, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 217, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 218, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 219, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 220, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 221, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 222, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 223, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 224, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 225, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 226, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 227, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 228, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 229, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 230, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 231, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 232, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 233, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 234, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 235, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 236, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 237, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 238, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 239, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 240, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 1, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 2, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 3, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 4, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 5, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 6, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 7, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 8, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 9, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 10, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 11, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 12, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 13, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 14, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 15, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 16, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 17, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 18, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 19, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 20, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 21, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 22, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 23, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 24, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 25, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 26, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 27, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 28, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 29, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 30, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 31, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 32, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 33, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 34, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 35, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 36, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 37, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 38, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 39, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 40, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 41, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 42, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 43, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 44, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 45, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 46, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 47, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 48, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 49, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 50, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 51, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 52, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 53, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 54, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 55, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 56, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 57, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 58, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 59, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 60, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 61, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 62, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 63, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 64, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 65, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 66, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 67, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 68, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 69, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 70, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 71, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 72, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 73, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 74, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 75, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 76, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 77, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 78, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 79, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 80, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 81, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 82, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 83, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 84, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 85, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 86, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 87, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 88, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 89, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 90, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 91, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 92, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 93, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 94, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 95, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 96, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 97, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 98, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 99, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 100, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 101, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 102, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 103, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 104, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 105, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 106, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 107, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 108, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 109, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 110, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 111, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 112, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 113, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 114, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 115, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 116, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 117, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 118, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 119, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 120, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 121, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 122, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 123, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 124, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 125, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 126, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 127, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 128, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 129, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 130, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 131, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 132, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 133, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 134, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 135, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 136, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 137, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 138, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 139, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 140, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 141, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (1, 142, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (2, 143, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (3, 144, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (4, 145, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (5, 146, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 147, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (8, 148, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 149, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (9, 150, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 151, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (10, 152, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 153, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (11, 154, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 155, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (12, 156, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 157, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (13, 158, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 159, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 160, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (14, 161, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 162, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (15, 163, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 164, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 165, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (16, 166, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 167, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 168, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (17, 169, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 170, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (18, 171, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 172, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (19, 173, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 174, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (20, 175, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 176, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 177, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (21, 178, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 179, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 180, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (22, 181, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 182, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 183, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (23, 184, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 185, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (24, 186, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 187, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 188, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (25, 189, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 190, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 191, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (26, 192, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 193, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 194, 'I don’t like bungee jumping but I do like skiing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (27, 195, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 196, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 197, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 198, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 199, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (28, 200, 'It is amazing');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 201, 'It is going to be fun');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 202, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (29, 203, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 204, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 205, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (30, 206, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 207, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 208, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (31, 209, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 210, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 211, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 212, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (32, 213, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 214, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 215, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (33, 216, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 217, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 218, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (34, 219, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 220, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 221, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (35, 222, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 223, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 224, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (36, 225, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (37, 226, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (38, 227, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (39, 228, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (40, 229, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (41, 230, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (42, 231, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (43, 232, 'Cool!!!');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (44, 233, 'Love this place');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (45, 234, 'Thrilling experience');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (46, 235, 'Nothing can stop me.');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (47, 236, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (48, 237, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (49, 238, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (50, 239, 'Really cool place to carve');
INSERT INTO COMMENTS(poster, carve, comment)
VALUES (51, 240, 'Really cool place to carve');

INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 32, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 2, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 6, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 7, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 8, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 9, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 10, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 13, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 14, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 15, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 22, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 6, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 7, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 8, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 9, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 10, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 13, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 14, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 15, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 22, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 6, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 7, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 8, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 9, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 10, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 13, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 14, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 15, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 18, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 2, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 1, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 21, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 6, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 30, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 8, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 12, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (6, 2, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (7, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (8, 2, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (8, 20, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (9, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (10, 13, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (10, 25, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (11, 8, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (12, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (12, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (12, 6, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (13, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (13, 16, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (13, 12, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (14, 1, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (14, 5, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (14, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (15, 29, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (15, 26, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (15, 24, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 30, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 29, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 7, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 29, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 26, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 23, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 16, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (18, 20, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (18, 21, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (19, 14, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (20, 12, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (21, 8, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (21, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (21, 5, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (22, 9, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (23, 11, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (24, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (24, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (24, 29, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (25, 12, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (25, 6, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (25, 3, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 9, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 5, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 23, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (27, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (27, 22, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (28, 25, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (28, 27, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (28, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 7, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 5, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 3, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 16, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 28, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 10, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 20, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 30, 'block');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 25, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 12, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 24, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (33, 199, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (34, 198, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (35, 197, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (36, 196, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (37, 195, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (38, 194, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (39, 193, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (40, 192, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (41, 191, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (42, 190, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (43, 189, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (44, 188, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (45, 187, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (46, 186, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (47, 185, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (48, 184, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (49, 183, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (50, 182, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (51, 181, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (52, 180, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (53, 179, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (54, 178, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (55, 177, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (56, 176, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (57, 175, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (58, 174, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (59, 173, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (60, 172, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (61, 171, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (62, 170, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (63, 169, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (64, 168, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (65, 167, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (66, 166, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (67, 165, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (68, 164, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (69, 163, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (70, 162, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (71, 161, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (72, 160, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (73, 159, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (74, 158, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (75, 157, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (76, 156, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (77, 155, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (78, 154, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (79, 153, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (80, 152, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (81, 151, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (82, 150, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (83, 149, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (84, 148, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (85, 147, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (86, 146, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (87, 145, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (88, 144, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (89, 143, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (90, 142, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (91, 141, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (92, 140, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (93, 139, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (94, 138, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (95, 137, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (96, 136, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (97, 135, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (98, 134, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (99, 133, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (100, 132, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (101, 131, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (102, 130, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (103, 129, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (104, 128, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (105, 127, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (106, 126, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (107, 125, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (108, 124, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (109, 123, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (110, 122, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (111, 121, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (112, 120, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (113, 119, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (114, 118, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (115, 117, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (116, 116, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (117, 115, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (118, 114, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (119, 113, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (120, 112, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (121, 111, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (122, 110, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (123, 109, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (124, 108, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (125, 107, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (126, 106, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (127, 105, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (128, 104, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (129, 103, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (130, 102, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (131, 101, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (132, 100, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (133, 99, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (134, 98, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (135, 97, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (136, 96, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (137, 95, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (138, 94, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (139, 93, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (140, 92, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (141, 91, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (142, 90, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (143, 89, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (144, 88, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (145, 87, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (146, 86, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (147, 85, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (148, 84, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (149, 83, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (150, 82, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (151, 81, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (152, 80, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (153, 79, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (154, 78, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (155, 77, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (156, 76, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (157, 75, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (158, 74, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (159, 73, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (160, 72, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (161, 71, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (162, 70, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (163, 69, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (164, 68, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (165, 67, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (166, 66, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (167, 65, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (168, 64, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (169, 63, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (170, 62, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (171, 61, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (172, 60, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (173, 59, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (174, 58, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (175, 57, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (176, 56, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (177, 55, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (178, 54, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (179, 53, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (180, 52, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (181, 51, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (182, 50, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (183, 49, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (184, 48, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (185, 47, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (186, 46, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (187, 45, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (188, 44, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (189, 43, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (190, 42, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (191, 41, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (192, 40, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (193, 39, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (194, 38, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (195, 37, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (196, 36, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (197, 35, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (198, 34, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (199, 33, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 32, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 199, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 198, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 197, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 196, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 195, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 194, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 193, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 192, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 191, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 190, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 189, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 188, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 187, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (1, 186, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 185, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 184, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 183, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 182, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 181, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 180, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 179, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 178, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 177, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 176, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 175, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 174, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 173, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (2, 172, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 171, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 170, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 169, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 168, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 167, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 166, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 165, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 164, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 163, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 162, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 161, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 160, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 159, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (3, 158, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 157, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 156, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 155, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 154, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 153, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 152, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 151, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 150, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 149, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 148, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (4, 147, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 146, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 145, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 144, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (5, 143, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (6, 142, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (7, 141, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (8, 140, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (8, 139, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (9, 138, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (10, 137, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (10, 136, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (11, 135, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (12, 134, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (12, 133, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (12, 132, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (13, 131, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (13, 130, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (13, 129, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (14, 128, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (14, 127, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (14, 126, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (15, 125, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (15, 124, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (15, 123, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 122, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 121, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 120, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (16, 119, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 118, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 117, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 116, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 115, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (17, 114, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (18, 113, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (18, 112, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (19, 111, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (20, 110, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (21, 109, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (21, 108, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (21, 107, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (22, 106, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (23, 105, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (24, 104, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (24, 103, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (24, 102, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (25, 101, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (25, 100, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (25, 99, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 98, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 97, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 96, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (26, 95, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (27, 94, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (27, 93, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (28, 92, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (28, 91, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (28, 90, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 89, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 88, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 87, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (29, 86, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 85, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 84, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 83, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (30, 82, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 81, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 80, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 79, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (31, 78, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 77, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 76, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 75, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (32, 74, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (33, 73, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (34, 72, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (35, 71, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (36, 70, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (37, 69, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (38, 68, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (39, 67, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (40, 66, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (41, 65, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (42, 64, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (43, 63, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (44, 62, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (45, 61, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (46, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (47, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (48, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (49, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (50, 56, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (51, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (52, 54, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (53, 53, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (54, 52, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (55, 51, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (56, 50, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (57, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (58, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (59, 47, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (60, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (61, 45, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (62, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (63, 43, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (64, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (65, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (66, 40, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (67, 39, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (68, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (69, 37, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (70, 36, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (71, 35, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (72, 34, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (73, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (74, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (75, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (76, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (77, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (78, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (79, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (80, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (81, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (82, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (83, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (84, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (85, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (86, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (87, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (88, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (89, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (90, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (91, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (92, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (93, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (94, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (95, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (96, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (97, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (98, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (99, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (100, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (101, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (102, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (103, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (104, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (105, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (106, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (107, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (108, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (109, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (110, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (111, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (112, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (113, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (114, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (115, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (116, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (117, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (118, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (119, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (120, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (121, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (122, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (123, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (124, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (125, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (126, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (127, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (128, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (129, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (130, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (131, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (132, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (133, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (134, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (135, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (136, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (137, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (138, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (139, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (140, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (141, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (142, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (143, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (144, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (145, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (146, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (147, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (148, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (149, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (150, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (151, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (152, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (153, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (154, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (155, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (156, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (157, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (158, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (159, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (160, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (161, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (162, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (163, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (164, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (165, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (166, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (167, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (168, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (169, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (170, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (171, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (172, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (173, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (174, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (175, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (176, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (177, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (178, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (179, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (180, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (181, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (182, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (183, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (184, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (185, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (186, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (187, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (188, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (189, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (190, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (191, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (192, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (193, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (194, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (195, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (196, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (197, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (198, 4, 'buddy');
INSERT INTO FOLLOWS(user_id1, user_id2, type)
VALUES (199, 4, 'buddy');

INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (4, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (4, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (4, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (5, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (5, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (5, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (6, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (6, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (6, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 40, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 37, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (10, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (10, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 16, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (14, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (14, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (14, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (15, 56, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (15, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (15, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (16, 43, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (16, 47, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (16, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (17, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (17, 13, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (17, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (18, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (18, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (18, 27, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (19, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (19, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (19, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 51, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 53, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 23, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (23, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (23, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (25, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (25, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (25, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 35, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (28, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (28, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 39, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 31, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 36, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (31, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (31, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 11, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 12, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 13, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 14, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 15, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 16, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 17, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 18, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 19, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 20, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 11, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 12, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 13, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 14, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 15, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 16, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 17, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 18, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 19, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 20, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 11, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 12, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 13, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 14, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 15, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 16, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 17, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 18, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 19, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 20, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 21, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 22, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 23, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 24, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 25, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 26, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 27, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 28, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 29, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 30, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 21, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 22, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 23, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 24, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 25, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 26, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 27, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 28, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 29, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 30, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 21, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 22, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 23, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 24, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 25, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 26, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 27, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 28, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 29, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 30, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 31, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 32, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 33, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 34, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 35, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 36, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 37, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 38, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 39, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 40, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 31, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 32, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 33, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 34, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 35, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 36, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 37, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 38, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 39, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 40, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 31, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 32, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 33, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 34, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 35, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 36, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 37, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 38, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 39, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 40, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 41, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 42, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 43, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 44, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 45, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 46, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 47, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 48, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 49, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 50, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 41, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 42, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 43, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 44, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 45, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 46, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 47, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 48, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 49, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 50, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 41, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 42, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 43, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 44, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 45, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 46, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 47, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 48, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 49, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 50, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 51, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 52, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 53, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 54, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 55, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 56, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 57, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 58, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 59, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 60, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 51, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 52, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 53, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 54, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 55, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 56, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 57, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 58, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 59, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 60, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 51, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 52, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 53, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 54, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 55, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 56, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 57, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 58, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 59, NULL);
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 60, NULL);

INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (4, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (4, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (4, 10, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (5, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (5, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (5, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (6, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (6, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (6, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (7, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 40, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (8, 37, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (9, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (10, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (10, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (11, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 16, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (12, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (13, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (14, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (14, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (14, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (15, 56, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (15, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (15, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (16, 43, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (16, 47, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (16, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (17, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (17, 13, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (17, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (18, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (18, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (18, 27, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (19, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (19, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (19, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (20, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 51, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 53, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (21, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 23, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (22, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (23, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (23, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 5, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 6, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (24, 8, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (25, 2, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (25, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (25, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 35, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (26, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (27, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (28, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (28, 4, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 39, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 31, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (29, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 7, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 9, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (30, 36, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (31, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (31, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 1, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (32, 3, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 13, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 16, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 20, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 13, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 16, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 20, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 11, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 12, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 13, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 14, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 15, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 16, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 17, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 18, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 19, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 20, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 23, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 27, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 23, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 27, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 21, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 22, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 23, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 24, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 25, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 26, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 27, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 28, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 29, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 30, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 31, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 34, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 35, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 36, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 37, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 39, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 40, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 31, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 34, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 35, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 36, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 37, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 39, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 40, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 31, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 32, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 33, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 34, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 35, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 36, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 37, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 38, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 39, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 40, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 43, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 45, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 47, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 50, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 43, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 45, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 47, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 50, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 41, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 42, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 43, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 44, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 45, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 46, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 47, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 48, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 49, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 50, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 51, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 52, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 53, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 54, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 56, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (1, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 51, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 52, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 53, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 54, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 56, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (2, 60, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 51, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 52, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 53, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 54, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 55, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 56, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 57, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 58, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 59, 'follow');
INSERT INTO FOLLOWS(user_id1, venue_id, type)
VALUES (3, 60, 'follow');

